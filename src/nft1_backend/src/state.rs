use crate::attrs::{Attr, AttrVal};
use crate::engine::{define_global_attrs, define_global_contents, with_wasmi};
use crate::headers::{check_headers, ContentHeader, HeaderBase};
use crate::program::{DataModule, Export, Import, Module, ModuleId};
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
    Global as WasmiGlobal, Instance as WasmiInstance, Linker as WasmiLinker, Module as WasmiModule,
    Store as WasmiStore,
};

#[derive(CandidType, Deserialize, Clone, Default)]
pub struct CollectionState {
    pub name: String,
    pub logo: String,
    pub symbol: String,
    pub author: String,

    pub executions: Option<u64>,
    pub refills: Option<u64>,
}

impl CollectionState {
    fn default() -> Self {
        Self {
            name: String::from(""),
            logo: String::from(""),
            symbol: String::from(""),
            author: String::from(""),

            executions: None,
            refills: None,
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
    pub id: NftId,
    pub owner: Principal,
    pub accuires: Option<u64>,
    pub executions: Option<u64>,
    pub refils: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Option<Vec<ModuleId>>,
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct NftId(pub u128, pub u8, pub u8);

impl Storable for NftId {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Bounded {
        max_size: (size_of::<u128>() + 2 * size_of::<u8>()) as u32,
        is_fixed_size: true,
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
    pub owner: Principal,
    pub accuires: Option<u64>,
    pub executions: Option<u64>,
    pub refils: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Vec<ModuleId>,
}

impl NftData {
    pub fn new(args: NftDataCreate) -> Self {
        let contents_headers: Vec<_> = args
            .contents_headers
            .iter()
            .map(|header| HeaderBase::from(header))
            .collect();

        if let Err(err) = check_headers(&contents_headers, &args.contents) {
            panic!("error checking contents_headers: {:?}", err);
        }

        NftData {
            id: args.id,
            owner: args.owner,
            accuires: args.accuires,
            refils: args.refils,
            executions: args.executions,
            attrs: args.attrs,
            contents_headers: args.contents_headers,
            contents: args.contents,
            modules: args.modules,
            modules_hidden: args.modules_hidden.unwrap_or(vec![]),
        }
    }

    pub fn get_all_modules(&self) -> Vec<ModuleId> {
        [self.modules.clone(), self.modules_hidden.clone()].concat()
    }
}

impl Storable for NftData {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftMemory(pub HashMap<u8, Vec<u8>>);

impl Storable for NftMemory {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
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

const MEMORY_ID_NFT_MEMORY: MemoryId = MemoryId::new(6);

thread_local! {
    static MEMORY_MANAGER: RefCell<MemoryManager<DefaultMemoryImpl>> =
        RefCell::new(MemoryManager::init(DefaultMemoryImpl::default()));

    pub static COLLECTION: RefCell<StableCell<CollectionState, Memory>> = RefCell::new(
        StableCell::init(MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_COLLECTION)), CollectionState::default())
            .expect("COLLECTION stable memory initialization failed")
    );

    pub static MODULES: RefCell<StableBTreeMap<u64, Module, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_MODULES)),
        )
    );

    pub static MODULES_DATA: RefCell<StableBTreeMap<u64, Vec<u8>, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_MODULES_DATA)),
        )
    );

    pub static MODULES_LAST_ID: RefCell<StableCell<u64, Memory>> = RefCell::new(
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

    pub static NFTS_MEMORY: RefCell<StableBTreeMap<NftId, NftMemory, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEMORY_MANAGER.with(|m| m.borrow().get(MEMORY_ID_NFT_MEMORY)),
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

pub fn with_collection<R>(f: impl FnOnce(&CollectionState) -> R) -> R {
    COLLECTION.with(|cell| f(cell.borrow().get()))
}

pub fn get_module_code(id: ModuleId) -> Vec<u8> {
    MODULES_DATA.with(|modules_data| modules_data.borrow().get(&id.0).expect("can't find module"))
}

pub fn get_limits_collection() -> ExecLimits {
    COLLECTION.with(|collection| {
        let attrs = collection.borrow().get().clone();

        ExecLimits::from((attrs.refills, attrs.executions))
    })
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

pub fn module_inc_id() -> u64 {
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

pub fn get_nft_data(id: NftId) -> Option<NftData> {
    NFTS_DATA.with(|nfts_data| nfts_data.borrow().get(&id))
}

pub fn get_nft_memory(id: NftId) -> Option<NftMemory> {
    NFTS_MEMORY.with(|nfts_memory| nfts_memory.borrow().get(&id))
}

pub fn list_nfts(owner: Principal) -> Vec<(NftData, NftMemory)> {
    NFTS_DATA.with(|nfts_data| {
        NFTS_MEMORY.with(|nfts_memory| {
            nfts_data
                .borrow()
                .iter()
                .filter(|(_, nft_data)| nft_data.owner == owner)
                .map(|(id, nft_data)| {
                    let nft_mem = nfts_memory.borrow().get(&id).expect("no nft memory found");

                    (nft_data, nft_mem)
                })
                .collect()
        })
    })
}

pub fn create_nft(id: NftId, nft_data: NftData) {
    NFTS_DATA.with(|nfts_data| {
        nfts_data.borrow_mut().insert(id, nft_data);
    });

    NFTS_MEMORY.with(|memory| {
        memory
            .borrow_mut()
            .insert(id, NftMemory(HashMap::default()));
    });
}

// __wbg_queueMicrotask_48421b3cc9052b68: Func(FuncType { params: [I32], results: [I32] })
// __wbg_queueMicrotask_12a30234db4045d3: Func(FuncType { params: [I32], results: [] })

// __wbg_call_1084a111329e68ce: Func(FuncType { params: [I32, I32], results: [I32] })
// __wbg_call_89af060b4e1523f2: Func(FuncType { params: [I32, I32, I32], results: [I32] })

pub fn update_modules(modules: Vec<(String, Vec<u8>)>) -> u64 {
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
                    modules_data
                        .borrow_mut()
                        .insert(id.try_into().unwrap(), wasm);

                    last_id = id;
                });
            });
        });
    }

    last_id
}

pub fn get_limits(limits: ExecLimits) -> ExecLimits {
    let module = get_module_by_export(Export::Limits);

    if module.is_none() {
        return limits;
    }

    let module = module.unwrap();

    let col_refills = limits
        .refills
        .map(|v| v.try_into().unwrap_or(0))
        .unwrap_or(-1);
    let col_executions = limits
        .executions
        .map(|v| v.try_into().unwrap_or(0))
        .unwrap_or(-1);

    with_module_instance(module, None, |store, instance| {
        let fn_name = Into::<String>::into(Export::Limits);
        let limits_fn = instance
            .get_typed_func::<(i64, i64), (i64, i64)>(&store, &fn_name)
            .expect("failed to get limits_fn");

        let (refils, executions) = limits_fn
            .call(&mut *store, (col_refills, col_executions))
            .expect("failed to get limits");

        let col_refils = col_refills.try_into().unwrap_or(0);
        let col_executions = col_executions.try_into().unwrap_or(0);

        ExecLimits {
            refills: Some(refils.try_into().unwrap_or(col_refils)),
            executions: Some(executions.try_into().unwrap_or(col_executions)),
        }
    })
}

pub fn get_used(
    module: Module,
    nft_data: Option<NftData>,
) -> (Option<Vec<Attr>>, Option<(Vec<ContentHeader>, Vec<u8>)>) {
    if nft_data.is_none() {
        return (None, None);
    }

    let nft_data = nft_data.unwrap();

    (
        Some(nft_data.attrs),
        Some((nft_data.contents_headers, nft_data.contents)),
    )
}

fn with_module_instance<R>(
    module: Module,
    nft_data: Option<NftData>,
    f: impl FnOnce(&mut WasmiStore<()>, WasmiInstance) -> R,
) -> R {
    with_wasmi(|engine, linker, store| {
        let wasm = get_module_code(module.id);

        let wasm_module = WasmiModule::new(engine, &mut &wasm[..]).expect("can't create module");

        let (attrs, contents) = get_used(module, nft_data);

        if let Some(attrs) = attrs {
            define_global_attrs(attrs, &mut *store, &mut *linker);
        }

        if let Some((headers, contents)) = contents {
            define_global_contents(headers, contents, &mut *store, &mut *linker);
        }

        let instance = linker
            .instantiate(&mut *store, &wasm_module)
            .expect("can't instantiate")
            .start(&mut *store)
            .expect("can't start");

        f(&mut *store, instance)
    })
}

fn exec_bytes(module: Module, nft_data: NftData, fn_name: String, command: Vec<u8>) -> Vec<u8> {
    with_module_instance(module, Some(nft_data), |store, instance| {
        let len = command.len() as i32;

        let adjust_stack_ptr_fn = instance
            .get_func(&mut *store, "__wbindgen_add_to_stack_pointer")
            .expect("failed to find adjust_stack_ptr_fn")
            .typed::<i32, i32>(&mut *store)
            .expect("failed to get adjust_stack_ptr_fn");

        let retptr = adjust_stack_ptr_fn
            .call(&mut *store, -16)
            .expect("failed to adjust stack pointer");

        let malloc_fn = instance
            .get_func(&mut *store, "__wbindgen_malloc")
            .expect("failed to find malloc_fn")
            .typed::<(i32, i32), i32>(&mut *store)
            .expect("failed to get malloc_fn");

        let ptr: usize = malloc_fn
            .call(&mut *store, (len, 1))
            .expect("malloc_fn failed to allocate memory")
            .try_into()
            .expect("failed to convert to usize");

        let memory = instance
            .get_memory(&store, "memory")
            .expect("failed to find memory export");

        let wasm_memory = memory.data_mut(&mut *store);

        wasm_memory[ptr..ptr + len as usize].copy_from_slice(&command);

        let exec_fn = instance
            .get_func(&mut *store, &fn_name)
            .expect("failed to find exec_fn")
            .typed::<(i32, i32, i32), ()>(&mut *store)
            .expect("failed to get exec_fn");

        exec_fn
            .call(&mut *store, (retptr, ptr as i32, len))
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
            .expect("failed to get free");

        free.call(&mut *store, (r0, r1, 1))
            .expect("failed to free memory");

        result
    })
}

pub fn exec_run(id: NftId, command: Vec<u8>) -> Option<Vec<u8>> {
    let nft_data = get_nft_data(id);

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
    Some(exec_bytes(module, nft_data, fn_name, command))
}

pub fn exec_accuire(id: NftId, command: Vec<u8>) -> Option<Vec<u8>> {
    Some(vec![])
    // let nft_data = get_nft_data(id);

    // if nft_data.is_none() {
    //     return None;
    // }

    // let nft_data = nft_data.unwrap();

    // let module = get_module_by_export_ids(Export::Accuire, nft_data.get_all_modules());

    // if module.is_none() {
    //     return None;
    // }

    // let module = module.unwrap();

    // let fn_name = Into::<String>::into(Export::Accuire);
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
