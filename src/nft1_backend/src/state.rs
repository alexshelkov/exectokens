use crate::attrs::{Attr, AttrVal};
use crate::contents::{ContentHeader, HeaderBase};
use crate::contents::{Contents, ContentsCreate};
use crate::engine::{with_wasmi, WasmiLinker, WasmiStore};
use crate::program::{
    define_import_fn_get_buf_val, define_import_fn_get_buf_val_by_str_key,
    define_import_fn_get_buf_val_by_u8_key, define_import_fn_set_buf_val_by_str_key,
    define_import_set_buf_val, define_import_set_buf_val_by_u8_key, DataModule, Export, Import,
    ImportName, Module, ModuleId,
};
use anyhow::{anyhow, Result};
use candid::types::result;
use candid::{CandidType, Decode, Encode, Principal};
use ciborium;
use ic_stable_structures::memory_manager::{MemoryId, MemoryManager, VirtualMemory};
use ic_stable_structures::vec;
use ic_stable_structures::{
    storable::{Blob, Bound},
    DefaultMemoryImpl, StableBTreeMap, StableCell, StableLog, StableMinHeap, StableVec, Storable,
};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::time::{SystemTime, UNIX_EPOCH};
use std::{borrow::Cow, cell::RefCell};
use std::{collections, default};
use std::{fmt, i64};
use wasmi::{
    AsContext, AsContextMut, Caller as WasmiCaller, Func as WasmiFunc, Global as WasmiGlobal,
    Instance as WasmiInstance, Memory as WasmiMemory, Module as WasmiModule,
    TypedFunc as WasmiTypedFunc,
};

#[derive(CandidType, Deserialize, Clone)]
pub struct CollectionState {
    pub name: String,
    pub logo: Option<Contents>,
    pub symbol: String,
    pub author: String,
}

impl Default for CollectionState {
    fn default() -> Self {
        Self {
            name: String::from(""),
            logo: None,
            symbol: String::from(""),
            author: String::from(""),
        }
    }
}

impl Storable for CollectionState {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

pub struct NftDataCreate {
    pub owner: Principal,
    pub acquired: bool,
    pub executions: Option<u64>,
    pub refills: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<ContentsCreate>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Option<Vec<ModuleId>>,
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct NftOwnedId(pub NftId, pub Principal);

impl Storable for NftOwnedId {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Bounded {
        max_size: size_of::<NftOwnedId>() as u32,
        is_fixed_size: false,
    };
}

#[derive(CandidType, Deserialize, Clone, Debug)]
struct NftOwners(Vec<Principal>);

impl Storable for NftOwners {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Clone, Debug)]
struct OwnerNfts(Vec<NftId>);

impl Storable for OwnerNfts {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
pub struct NftId(pub u128, pub u8, pub u8);

impl Storable for NftId {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Bounded {
        max_size: size_of::<NftId>() as u32,
        is_fixed_size: false,
    };
}

impl From<u128> for NftId {
    fn from(value: u128) -> Self {
        Self(value, 0, 0)
    }
}

impl Into<u128> for NftId {
    fn into(self) -> u128 {
        self.0
    }
}

#[derive(CandidType, Deserialize, Clone)]
pub struct NftData {
    pub id: NftId,
    // pub owner: Principal,
    pub acquired: bool,
    // pub executions: Option<u64>,
    // pub refills: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Vec<ModuleId>,
}

impl NftData {
    pub fn get_all_modules(&self) -> Vec<ModuleId> {
        [self.modules.clone(), self.modules_hidden.clone()].concat()
    }
}

impl Storable for NftData {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftMemory(pub HashMap<u8, Vec<u8>>);

impl Default for NftMemory {
    fn default() -> Self {
        NftMemory(HashMap::default())
    }
}

impl Storable for NftMemory {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

type Memory = VirtualMemory<DefaultMemoryImpl>;

const MEMORY_ID_NFT_LAST_ID: MemoryId = MemoryId::new(0);

const MEMORY_ID_COLLECTION: MemoryId = MemoryId::new(1);

const MEMORY_ID_MODULES: MemoryId = MemoryId::new(2);

const MEMORY_ID_MODULE_LAST_D: MemoryId = MemoryId::new(3);

const MEMORY_ID_MODULES_DATA: MemoryId = MemoryId::new(4);

const MEMORY_ID_NFTS: MemoryId = MemoryId::new(5);

const MEMORY_ID_NFT_OWNERS: MemoryId = MemoryId::new(6);
const MEMORY_ID_OWNER_NFTS: MemoryId = MemoryId::new(7);

const MEMORY_ID_NFT_MEMORY: MemoryId = MemoryId::new(8);

const MEMORY_ID_NFT_EXEC: MemoryId = MemoryId::new(9);

thread_local! {
    static MEMORY_MANAGER: RefCell<MemoryManager<DefaultMemoryImpl>> =
        RefCell::new(MemoryManager::init(DefaultMemoryImpl::default()));

    pub static COLLECTION: RefCell<StableCell<CollectionState, Memory>> = RefCell::new(
        StableCell::init(MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_COLLECTION)), CollectionState::default())
            .expect("COLLECTION stable memory initialization failed")
    );

    pub static MODULES: RefCell<StableBTreeMap<u32, Module, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_MODULES)),
        )
    );

    pub static MODULES_DATA: RefCell<StableBTreeMap<u32, Vec<u8>, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_MODULES_DATA)),
        )
    );

    pub static MODULES_LAST_ID: RefCell<StableCell<u32, Memory>> = RefCell::new(
        StableCell::init(MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_MODULE_LAST_D)), 0)
            .expect("MODULES_LAST_ID stable memory config initialization failed")
    );

    pub static NFT_LAST_ID: RefCell<StableCell<u128, Memory>> = RefCell::new(
        StableCell::init(MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFT_LAST_ID)), 0)
            .expect("NFT_LAST_ID stable memory config initialization failed")
    );

    pub static NFTS_DATA: RefCell<StableBTreeMap<NftId, NftData, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFTS)),
        )
    );

    pub static NFTS_OWNERS: RefCell<StableBTreeMap<NftId, NftOwners, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFT_OWNERS)),
        )
    );

    pub static OWNER_NFTS: RefCell<StableBTreeMap<Principal, OwnerNfts, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_OWNER_NFTS)),
        )
    );

    pub static NFTS_MEMORY: RefCell<StableBTreeMap<NftOwnedId, NftMemory, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFT_MEMORY)),
        )
    );

    pub static NFTS_EXECS: RefCell<StableBTreeMap<NftOwnedId, ExecLimits, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFT_EXEC)),
        )
    );
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct ExecLimits {
    pub refills: Option<u64>,
    pub executions: Option<u64>,
}

impl ExecLimits {
    fn default() -> Self {
        Self {
            refills: None,
            executions: None,
        }
    }
}

impl From<(Option<u64>, Option<u64>)> for ExecLimits {
    fn from(item: (Option<u64>, Option<u64>)) -> Self {
        Self {
            refills: item.0,
            executions: item.1,
        }
    }
}

impl Storable for ExecLimits {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

pub fn with_collection<R>(f: impl FnOnce(&CollectionState) -> R) -> R {
    COLLECTION.with(|cell| f(cell.borrow().get()))
}

pub fn get_module_code(id: ModuleId) -> Vec<u8> {
    MODULES_DATA.with(|modules_data| modules_data.borrow().get(&id.0).expect("can't find module"))
}

pub fn nft_get_id() -> u128 {
    NFT_LAST_ID.with(|last_id| *last_id.borrow().get())
}

pub fn nft_inc_id() -> u128 {
    NFT_LAST_ID.with(|last_id| {
        let id = *last_id.borrow().get();
        last_id.borrow_mut().set(id + 1).expect("can't set");
        id
    })
}

pub fn module_inc_id() -> u32 {
    MODULES_LAST_ID.with(|last_id| {
        let id = *last_id.borrow().get();
        last_id.borrow_mut().set(id + 1).expect("can't set");
        id
    })
}

pub fn get_data_modules(nft_modules: Vec<ModuleId>) -> Vec<DataModule> {
    let mut data_modules: Vec<DataModule> = vec![];

    MODULES.with(|modules| {
        MODULES_DATA.with(|modules_data| {
            for id in nft_modules {
                if let Some(module) = modules.borrow().get(&id.0) {
                    if let Some(data) = modules_data.borrow().get(&id.0) {
                        data_modules.push(DataModule(module, data))
                    }
                }
            }
        })
    });

    data_modules
}

pub fn update_collection(collection: CollectionState) {
    COLLECTION.with(|collection_state| {
        collection_state
            .borrow_mut()
            .set(collection)
            .expect("failed to update COLLECTION stable memory data");
    });
}

pub fn nft_data_get(id: NftId) -> Option<NftData> {
    NFTS_DATA.with(|nfts_data| nfts_data.borrow().get(&id))
}

pub fn nft_contents_get(id: NftId) -> Option<(Vec<ContentHeader>, Vec<u8>)> {
    let nft_data = nft_data_get(id)?;

    Some((nft_data.contents_headers, nft_data.contents))
}

pub fn nft_modules_get(id: NftId) -> Option<(Vec<ModuleId>, Vec<ModuleId>)> {
    let nft_data = nft_data_get(id);

    nft_data.map(|nft_data| (nft_data.modules, nft_data.modules_hidden))
}

pub fn nft_memory_get(id: NftOwnedId) -> Option<NftMemory> {
    NFTS_MEMORY.with(|nfts_memory| nfts_memory.borrow().get(&id))
}

pub fn nft_memory_get_by_key(id: NftOwnedId, key: u8) -> Vec<u8> {
    let memory = nft_memory_get(id);

    if memory.is_none() {
        return vec![];
    }

    let memory = memory.unwrap();

    memory.0.get(&key).map(|vec| vec.to_vec()).unwrap_or(vec![])
}

pub fn nft_memory_set(id: NftOwnedId, key: u8, data: Vec<u8>) -> bool {
    let res = NFTS_MEMORY.with(|nfts_memory| {
        let memory = nfts_memory.borrow().get(&id);

        if memory.is_none() {
            return false;
        }

        let mut memory = memory.unwrap();

        memory.0.insert(key, data);

        nfts_memory.borrow_mut().insert(id, memory);

        return true;
    });

    // TODO: dbg
    let current = nft_memory_get(id);
    ic_cdk::println!("current memory {:?}", current);

    res
}

pub fn nft_memory_keys(id: NftOwnedId) -> Vec<u8> {
    NFTS_MEMORY.with(|nfts_memory| {
        let memory = nfts_memory.borrow().get(&id);

        memory
            .map(|memory| memory.0.keys().copied().collect())
            .unwrap_or(vec![])
    })
}

pub fn nft_contents_headers_set(id: NftId, data: Vec<ContentHeader>) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change contents of acquired nft
        if nft_data.acquired {
            return false;
        }

        nft_data.contents_headers = data;

        nfts_data.borrow_mut().insert(id, nft_data);

        return true;
    });

    // TODO: dbg
    let current = nft_contents_get(id);
    ic_cdk::println!("current headers {:?}", current);

    res
}

pub fn nft_contents_set(id: NftId, data: Vec<u8>) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change contents of acquired nft
        if nft_data.acquired {
            return false;
        }

        nft_data.contents = data;

        nfts_data.borrow_mut().insert(id, nft_data);

        return true;
    });

    // TODO: dbg
    let current = nft_contents_get(id);
    ic_cdk::println!("current contents {:?}", current);

    res
}

pub fn nft_modules_set(id: NftId, modules_ids: Vec<ModuleId>, hidden: bool) -> bool {
    NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change modules of acquired nft
        if nft_data.acquired {
            return false;
        }

        if hidden {
            nft_data.modules_hidden = modules_ids;
        } else {
            nft_data.modules = modules_ids;
        }

        nfts_data.borrow_mut().insert(id, nft_data);

        return true;
    })
}

pub fn nft_attr_get(id: NftId, key: String) -> Option<AttrVal> {
    let nft_data = nft_data_get(id)?;

    if let Some(attr) = nft_data.attrs.iter().find(|attr| attr.name == key) {
        return Some(attr.val.clone());
    }

    None
}

pub fn nft_attr_set(id: NftId, key: String, val: AttrVal) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change attr of acquired nft
        if nft_data.acquired {
            return false;
        }

        if let Some(index) = nft_data.attrs.iter().position(|attr| attr.name == key) {
            println!("Found '{}' at index: {}", key, index);

            nft_data.attrs[index] = Attr {
                name: key.clone(),
                val,
            };

            nfts_data.borrow_mut().insert(id, nft_data);

            return true;
        }

        // nfts_data.borrow_mut().insert(id, nft_data);

        return false;
    });

    // TODO: dbg
    let current = nft_attr_get(id, key);
    ic_cdk::println!("current attr {:?}", current);

    res
}

pub fn list_nfts(owner: Principal) -> Vec<(NftData, NftMemory)> {
    OWNER_NFTS.with(|owner_nfts| {
        let nfts = owner_nfts.borrow().get(&owner);

        if nfts.is_none() {
            return vec![];
        }

        let nfts: Vec<_> = nfts
            .unwrap()
            .0
            .into_iter()
            .map(|nft_id| {
                let nft_data = nft_data_get(nft_id)?;
                let nft_mem = nft_memory_get(NftOwnedId(nft_id, owner))?;

                Some((nft_data, nft_mem))
            })
            .collect();

        let mut result = vec![];

        for nft in nfts {
            if let Some(nft) = nft {
                result.push(nft);
            }
        }

        result
    })
}

pub fn create_nft(args: NftDataCreate) -> Option<NftId> {
    let (contents_headers, contents) = Contents::create_many(args.contents)?;

    let id: u128 = nft_inc_id();
    let id: NftId = id.into();
    let owner = args.owner;

    let nft_data = NftData {
        id,
        acquired: args.acquired,
        attrs: args.attrs,
        contents_headers: contents_headers,
        contents: contents,
        modules: args.modules,
        modules_hidden: args.modules_hidden.unwrap_or(vec![]),
    };

    let id_owned = NftOwnedId(id, args.owner);

    NFTS_DATA.with(|nfts_data| {
        nfts_data.borrow_mut().insert(id, nft_data);
    });

    NFTS_MEMORY.with(|memory| {
        memory.borrow_mut().insert(id_owned, NftMemory::default());
    });

    NFTS_OWNERS.with(|nfts_owners| {
        let mut nfts_owners = nfts_owners.borrow_mut();

        if let Some(mut owners) = nfts_owners.get(&id) {
            owners.0.push(owner);

            nfts_owners.insert(id, owners);
        } else {
            nfts_owners.insert(id, NftOwners(vec![owner]));
        }
    });

    OWNER_NFTS.with(|owner_nfts| {
        let mut owner_nfts = owner_nfts.borrow_mut();

        if let Some(mut nfts) = owner_nfts.get(&owner) {
            nfts.0.push(id);

            owner_nfts.insert(owner, nfts);
        } else {
            owner_nfts.insert(owner, OwnerNfts(vec![id]));
        }
    });

    Some(id)
}

pub fn update_modules(modules: Vec<(String, Vec<u8>)>) -> u32 {
    let mut last_id = 0;

    for (name, wasm) in modules {
        with_wasmi(|engine, _, _| {
            MODULES.with(|modules| {
                MODULES_DATA.with(|modules_data| {
                    let id = module_inc_id();

                    let wasm_module =
                        WasmiModule::new(engine, &mut &wasm[..]).expect("can't create module");

                    let imports: Vec<_> = wasm_module
                        .imports()
                        .map(|e| {
                            let name = e.name();
                            let types = e.ty();

                            Import::from((name, types))
                        })
                        .collect();

                    let exports: Vec<_> = wasm_module
                        .exports()
                        .map(|e| Export::from(e.name()))
                        .collect();

                    let module = Module::new(id, name.clone(), exports, imports);

                    modules.borrow_mut().insert(id, module);
                    modules_data.borrow_mut().insert(id, wasm);

                    last_id = id;
                });
            });
        });
    }

    last_id
}

fn define_nft_modules(
    owner: Principal,
    nft_id: NftId,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
) {
    // Memory

    define_import_fn_get_buf_val(
        ImportName::MemoryKeys,
        &imports,
        &mut *store,
        &mut *linker,
        move || nft_memory_keys(NftOwnedId(nft_id, owner)),
    );

    define_import_fn_get_buf_val_by_u8_key(
        ImportName::MemoryGet,
        &imports,
        &mut *store,
        &mut *linker,
        move |key| nft_memory_get_by_key(NftOwnedId(nft_id, owner), key),
    );

    define_import_set_buf_val_by_u8_key(
        ImportName::MemorySet,
        &imports,
        &mut *store,
        &mut *linker,
        move |key, data| nft_memory_set(NftOwnedId(nft_id, owner), key, data),
    );

    // Modules

    for name in [ImportName::ModulesGet, ImportName::ModulesHiddenGet] {
        define_import_fn_get_buf_val(name, &imports, &mut *store, &mut *linker, move || {
            let ids = nft_modules_get(nft_id);

            ids.map(|ids| {
                ModuleId::ids_to_buf(if name == ImportName::ModulesGet {
                    ids.0
                } else {
                    ids.1
                })
            })
            .unwrap_or(vec![])
        });
    }

    for name in [ImportName::ModulesSet, ImportName::ModulesHiddenSet] {
        define_import_set_buf_val(name, &imports, &mut *store, &mut *linker, move |data| {
            let ids = ModuleId::ids_from_buf(data);

            ids.map(|ids| nft_modules_set(nft_id, ids, name == ImportName::ModulesSet))
                .unwrap_or(false)
        });
    }

    // Contents

    for name in [ImportName::ContentsGet, ImportName::ContentsHeadersSet] {
        define_import_fn_get_buf_val(name, &imports, &mut *store, &mut *linker, move || {
            let contents = nft_contents_get(nft_id);

            contents
                .map(|contents| {
                    if name == ImportName::ContentsGet {
                        contents.1
                    } else {
                        ContentHeader::headers_to_buf(contents.0)
                    }
                })
                .unwrap_or(vec![])
        });
    }

    for name in [ImportName::ContentsSet, ImportName::ContentsHeadersSet] {
        define_import_set_buf_val(name, &imports, &mut *store, &mut *linker, move |data| {
            if name == ImportName::ContentsSet {
                nft_contents_set(nft_id, data)
            } else {
                let headers = ContentHeader::headers_from_buf(data);

                headers
                    .map(|headers| nft_contents_headers_set(nft_id, headers))
                    .unwrap_or(false)
            }
        });
    }

    // Attrs

    define_import_fn_get_buf_val_by_str_key(
        ImportName::AttrGet,
        &imports,
        &mut *store,
        &mut *linker,
        move |attr_name| {
            let attr_val = nft_attr_get(nft_id, attr_name);

            attr_val.map(|attr_val| attr_val.into()).unwrap_or(vec![])
        },
    );

    define_import_fn_set_buf_val_by_str_key(
        ImportName::AttrSet,
        &imports,
        &mut *store,
        &mut *linker,
        move |attr_name, data| {
            let attr_val = AttrVal::from_buf(&data);

            attr_val
                .map(|attr_val| nft_attr_set(nft_id, attr_name, attr_val))
                .unwrap_or(false)
        },
    );
}

fn with_module_instance<R>(
    owner: Principal,
    module: Module,
    nft_data: Option<NftData>,
    f: impl FnOnce(
        &mut WasmiStore,
        WasmiInstance,
        Vec<Import>,
        (WasmiTypedFunc<i32, i32>, WasmiTypedFunc<(i32, i32), i32>),
        WasmiMemory,
    ) -> R,
) -> R {
    with_wasmi(|engine, store, linker| {
        let wasm = get_module_code(module.id);
        let wasm_module = WasmiModule::new(engine, &mut &wasm[..]).expect("can't create module");

        let nft_id = nft_data.map(|nft_data| nft_data.id);

        let imports: Vec<_> = wasm_module
            .imports()
            .map(|e| {
                let name = e.name();
                let types = e.ty();

                Import::from((name, types))
            })
            .collect();

        if let Some(nft_id) = nft_id {
            define_nft_modules(owner, nft_id, &imports, &mut *store, &mut *linker);
        }

        let instance = linker
            .instantiate(&mut *store, &wasm_module)
            .expect("can't instantiate")
            .start(&mut *store)
            .expect("can't start");

        let adjust_stack_ptr_fn = instance
            .get_func(&mut *store, "__wbindgen_add_to_stack_pointer")
            .expect("failed to find adjust_stack_ptr_fn")
            .typed::<i32, i32>(&mut *store)
            .expect("failed to type adjust_stack_ptr_fn");

        let malloc_fn = instance
            .get_func(&mut *store, "__wbindgen_malloc")
            .expect("failed to find malloc_fn")
            .typed::<(i32, i32), i32>(&mut *store)
            .expect("failed to type malloc_fn");

        let memory = instance
            .get_memory(&store, "memory")
            .expect("failed to find memory export");

        f(
            &mut *store,
            instance,
            imports,
            (adjust_stack_ptr_fn, malloc_fn),
            memory,
        )
    })
}

fn exec_bytes(
    owner: Principal,
    module: Module,
    nft_data: NftData,
    fn_name: String,
    bytes: Vec<u8>,
) -> Vec<u8> {
    with_module_instance(
        owner,
        module,
        Some(nft_data),
        |store, instance, _, (adjust_stack_ptr_fn, malloc_fn), memory| {
            let len = bytes.len();

            let retptr = adjust_stack_ptr_fn
                .call(&mut *store, -16)
                .expect("failed to adjust stack pointer");

            let ptr: usize = malloc_fn
                .call(&mut *store, (len as i32, 1))
                .expect("malloc_fn failed to allocate memory")
                .try_into()
                .expect("failed to convert to usize");

            let wasm_memory = memory.data_mut(&mut *store);

            wasm_memory[ptr..ptr + len].copy_from_slice(&bytes);

            let func = instance
                .get_func(&mut *store, &fn_name)
                .expect(format!("failed to find fn: {}", fn_name).as_str())
                .typed::<(i32, i32, i32), ()>(&mut *store)
                .expect(format!("failed to type fn: {}", fn_name).as_str());

            func.call(&mut *store, (retptr, ptr as i32, len as i32))
                .expect("failed to call WASM function");

            let wasm_memory = memory.data_mut(&mut *store);

            let r0 = i32::from_le_bytes(
                wasm_memory[retptr as usize..retptr as usize + 4]
                    .try_into()
                    .unwrap(),
            );
            let r1 = i32::from_le_bytes(
                wasm_memory[retptr as usize + 4..retptr as usize + 8]
                    .try_into()
                    .unwrap(),
            );

            let result = wasm_memory[r0 as usize..(r0 as usize) + (r1 as usize)].to_vec();

            let free = instance
                .get_func(&mut *store, "__wbindgen_free")
                .expect("failed to find free")
                .typed::<(i32, i32, i32), ()>(&mut *store)
                .expect("failed to type free");

            free.call(&mut *store, (r0, r1, 1))
                .expect("failed to free memory");

            result
        },
    )
}

pub fn exec_run(id: NftOwnedId, command: Vec<u8>) -> Option<Vec<u8>> {
    let nft_data = nft_data_get(id.0);

    if nft_data.is_none() {
        return None;
    }

    let nft_data = nft_data.unwrap();

    let module = get_module_by_export_ids(Export::Main, nft_data.get_all_modules());

    if module.is_none() {
        return None;
    }

    let module = module.unwrap();

    let fn_name = Into::<String>::into(Export::Main);
    Some(exec_bytes(id.1, module, nft_data, fn_name, command))
}

pub fn get_module_by_export_ids(export: Export, ids: Vec<ModuleId>) -> Option<Module> {
    MODULES.with(|modules| {
        for (name, module) in modules.borrow().iter() {
            if ids.contains(&module.id) && module.exports.contains(&export) {
                return Some(module);
            }
        }

        None
    })
}

pub fn get_module_by_export(export: Export) -> Option<Module> {
    MODULES.with(|modules| {
        for (name, module) in modules.borrow().iter() {
            if module.exports.contains(&export) {
                return Some(module);
            }
        }

        None
    })
}
