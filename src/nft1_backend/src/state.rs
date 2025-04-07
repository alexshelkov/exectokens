use crate::engine::{wasmi_exec_fn, with_wasmi, StoreState, WasmiLinker, WasmiStore};
use crate::memory::{Memory, MEM_IDS};
use crate::nft::{
    Collection, NftCreate, NftData, NftExec, NftExecErr, NftExecs, NftId, NftIdMajor, NftMemory,
    NftMemoryKey, NftMemoryTag, NftMinorSupply, NftOwnedId, NftOwner, NftOwners, NftUpdate,
    OwnerNfts,
};
use crate::program::{
    define_import_fn_get_buf_val, define_import_fn_get_buf_val_by_str_key,
    define_import_fn_get_buf_val_by_u16_key, define_import_fn_set_buf_val_by_str_key,
    define_import_set_buf_val, define_import_set_buf_val_by_u16_key, DataModule, Export,
    ExportName, Import, ImportName, Module, ModuleDesc, ModuleId, ModuleTag,
};
use anyhow::{anyhow, Result};
use candid::types::result;
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::memory_manager::{MemoryId, MemoryManager, VirtualMemory};
use ic_stable_structures::vec;
use ic_stable_structures::{
    DefaultMemoryImpl, StableBTreeMap, StableCell, StableLog, StableMinHeap, StableVec,
};
use nft1_core::attrs::AttrKey;
use nft1_core::mint::{MintError, MintParams, MintResult};
use nft1_core::program::{self, ProgramCreate, ProgramCreateErr, ProgramCreateResult};
use nft1_core::{
    attrs::{Attr, AttrVal},
    contents::{create_contents, ContentHeader, Contents, ContentsCreate},
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
    TypedFunc as WasmiTypedFunc, WasmParams, WasmResults,
};

thread_local! {
    pub static COLLECTION: RefCell<StableCell<Collection, Memory>> = RefCell::new(
        StableCell::init(MEM_IDS.collection(), Collection::default())
            .expect("COLLECTION stable memory initialization failed")
    );

    pub static MODULES: RefCell<StableBTreeMap<u32, Module, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.modules()
        )
    );

    pub static MODULES_DATA: RefCell<StableBTreeMap<u32, Vec<u8>, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.modules_data()
        )
    );

    pub static MODULES_LAST_ID: RefCell<StableCell<u32, Memory>> = RefCell::new(
        StableCell::init(MEM_IDS.modules_last_id(), 0)
            .expect("MODULES_LAST_ID stable memory config initialization failed")
    );

    pub static NFT_LAST_ID: RefCell<StableCell<NftIdMajor, Memory>> = RefCell::new(
        StableCell::init(MEM_IDS.nft_last_id(), 0)
            .expect("NFT_LAST_ID stable memory config initialization failed")
    );

    pub static NFT_SUPPLY: RefCell<StableBTreeMap<NftIdMajor, NftMinorSupply, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.nft_supply(),
        )
    );

    pub static NFTS_DATA: RefCell<StableBTreeMap<NftId, NftData, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.nfts_data(),
        )
    );

    pub static NFTS_OWNERS: RefCell<StableBTreeMap<NftId, NftOwners, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.nfts_owners()
        )
    );

    pub static OWNER_NFTS: RefCell<StableBTreeMap<Principal, OwnerNfts, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.owner_nfts()
        )
    );

    pub static NFTS_MEMORY: RefCell<StableBTreeMap<NftOwnedId, NftMemory, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.nfts_memory()
        )
    );

    pub static NFTS_EXECS: RefCell<StableBTreeMap<NftOwnedId, NftExecs, Memory>> = RefCell::new(
        StableBTreeMap::init(
            MEM_IDS.nfts_execs()
        )
    );
}

pub fn with_collection<R>(f: impl FnOnce(&Collection) -> R) -> R {
    COLLECTION.with(|cell| f(cell.borrow().get()))
}

pub fn get_module_code(id: ModuleId) -> Vec<u8> {
    MODULES_DATA.with(|modules_data| modules_data.borrow().get(&id.0).expect("can't find module"))
}

#[derive(CandidType, Deserialize)]
pub enum CapError {
    MinorError,
    MajorErr,
}

pub fn nft_cap_check(id: NftId) -> Result<(), CapError> {
    let supply_cap = with_collection(|collection| collection.supply_cap);

    if supply_cap.is_unlimited() {
        return Ok(());
    }

    if let Some(major_cap) = supply_cap.get_major() {
        if id.0 < major_cap {
            return Ok(());
        } else {
            return Err(CapError::MajorErr);
        }
    }

    if let Some(minor_cap) = supply_cap.get_minor() {
        let supply = id.1 as u16 + id.2 as u16;

        if supply < minor_cap {
            return Ok(());
        } else {
            return Err(CapError::MajorErr);
        }
    }

    return Ok(());
}

pub fn nft_get_id() -> NftIdMajor {
    NFT_LAST_ID.with(|last_id| *last_id.borrow().get())
}

pub fn nft_get_supply(id: NftIdMajor) -> NftMinorSupply {
    NFT_SUPPLY.with(|nft_supply| nft_supply.borrow().get(&id).unwrap_or(0))
}

pub fn nft_supply_inc(id: NftIdMajor) -> NftMinorSupply {
    NFT_SUPPLY.with(|nft_supply| {
        let supply = if let Some(supply) = nft_supply.borrow().get(&id) {
            supply + 1
        } else {
            0
        };

        nft_supply.borrow_mut().insert(id, supply);

        supply
    })
}

pub fn nft_inc_id() -> NftIdMajor {
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

pub fn list_modules() -> Vec<Module> {
    let mut data_modules: Vec<Module> = vec![];

    MODULES.with(|modules| {
        let modules = modules.borrow();

        for (_, module) in modules.iter() {
            data_modules.push(module);
        }
    });

    data_modules
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

pub fn update_collection(collection: Collection) {
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

pub fn nft_contents_get(id: NftId) -> Option<Contents> {
    let nft_data = nft_data_get(id)?;

    Some((nft_data.contents_headers, nft_data.contents))
}

pub fn nft_melt_get(id: NftId) -> Option<bool> {
    nft_data_get(id).map(|nft_data| nft_data.melted)
}

pub fn nft_memory_get(id: NftOwnedId) -> Option<NftMemory> {
    NFTS_MEMORY.with(|nfts_memory| nfts_memory.borrow().get(&id))
}

pub fn nft_exec_get(id: NftOwnedId) -> Option<NftExecs> {
    NFTS_EXECS.with(|nfts_execs| nfts_execs.borrow().get(&id))
}

pub fn nft_memory_get_by_key(id: NftOwnedId, key: u8) -> Vec<u8> {
    ic_cdk::println!("nft_memory_get_by_key: {:?} {:?}", id.0, key);

    nft_memory_get(id).map_or(vec![], |memory| memory.read(key))
}

pub fn nft_memory_get_tag_by_key(id: NftOwnedId, key: u8) -> NftMemoryTag {
    ic_cdk::println!("nft_memory_get_tag_by_key: {:?} {:?}", id.0, key);

    nft_memory_get(id).map_or(NftMemoryTag::default(), |memory| memory.read_tag(key))
}

pub fn nft_memory_set_by_key(id: NftOwnedId, key: u8, data: Vec<u8>) -> bool {
    ic_cdk::println!("nft_memory_set_by_key: {:?} {:?} {:?}", id.0, key, data);

    let res = NFTS_MEMORY.with(|nfts_memory| {
        let mut nfts_memory = nfts_memory.borrow_mut();

        let memory = nfts_memory.get(&id);

        let mut memory = memory.unwrap_or(NftMemory::default());

        memory.insert(key, data);

        nfts_memory.insert(id, memory);

        return true;
    });

    // TODO: dbg
    ic_cdk::println!(
        "nft_memory_set_by_key: updated memory {:?}",
        nft_memory_get(id)
    );
    ic_cdk::println!(
        "nft_memory_set_by_key: keys memory {:?}",
        nft_memory_keys(id)
    );

    res
}

pub fn nft_memory_keys(id: NftOwnedId) -> Vec<NftMemoryKey> {
    ic_cdk::println!("nft_memory_keys: {:?}", id.0);

    NFTS_MEMORY.with(|nfts_memory| {
        let memory = nfts_memory.borrow().get(&id);

        let mem_keys = memory.map(|memory| memory.keys()).unwrap_or(vec![]);

        // TODO: dbg
        ic_cdk::println!("nft_memory_keys keys: {:?}", mem_keys);

        mem_keys
    })
}

pub fn nft_contents_headers_set(id: NftId, data: Vec<ContentHeader>) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change contents of melted nft
        if nft_data.melted {
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

        // can't change contents of melted nft
        if nft_data.melted {
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

pub fn nft_melt_set(id: NftId) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let nft_data = nfts_data.borrow().get(&id);

        if nft_data.is_none() {
            return false;
        }

        let mut nft_data = nft_data.unwrap();

        // can't change contents of melted nft
        if nft_data.melted {
            return false;
        }

        nft_data.melted = true;

        nfts_data.borrow_mut().insert(id, nft_data);

        return true;
    });

    // TODO: dbg
    let current = nft_data_get(id);
    ic_cdk::println!("current melted {:?}", current.map(|c| c.melted));

    res
}

pub fn nft_modules_get(id: NftId, tag: ModuleTag) -> Option<Vec<ModuleId>> {
    let nft_data = nft_data_get(id);

    nft_data.map(|nft_data| nft_data.get_modules(tag))
}

pub fn nft_modules_set(id: NftId, modules_ids: Vec<ModuleId>, tag: ModuleTag) -> bool {
    NFTS_DATA.with(|nfts_data| {
        let mut nft_data = nfts_data.borrow_mut();

        let nft = nft_data.get(&id);

        if nft.is_none() {
            return false;
        }

        let mut nft = nft.unwrap();

        // can't change modules of melted nft
        if nft.melted {
            return false;
        }

        nft.update_modules(modules_ids, tag);

        nft_data.insert(id, nft);

        return true;
    })
}

pub fn nft_attr_get(id: NftId, key: AttrKey) -> Option<AttrVal> {
    let nft_data = nft_data_get(id)?;

    nft_data.attrs.get_val(key)
}

pub fn nft_attr_set(id: NftId, key: AttrKey, attr: Attr) -> bool {
    let res = NFTS_DATA.with(|nfts_data| {
        let mut nfts_data = nfts_data.borrow_mut();

        let nft = nfts_data.get(&id);

        if nft.is_none() {
            return false;
        }

        let mut nft = nft.unwrap();

        // can't change attrs of melted nft
        if nft.melted {
            return false;
        }

        if !nft.attrs.insert(key, attr) {
            return false;
        }

        nfts_data.insert(id, nft);

        true
    });

    // TODO: dbg
    let current = nft_attr_get(id, key);
    ic_cdk::println!("current attr {:?}", current);

    res
}

pub fn nft_get(id: NftOwnedId) -> Option<(NftData, NftExecs, NftMemory)> {
    let nft_data = nft_data_get(id.0)?;
    let nft_execs = nft_exec_get(id)?;
    let nft_mem = nft_memory_get(id)?;

    Some((nft_data, nft_execs, nft_mem))
}

pub fn list_nfts(owner: Principal) -> Vec<(NftData, NftExecs, NftMemory)> {
    OWNER_NFTS.with(|owner_nfts| {
        let nfts = owner_nfts.borrow().get(&owner);

        if nfts.is_none() {
            return vec![];
        }

        let nfts: Vec<_> = nfts
            .unwrap()
            .0
            .into_iter()
            .map(|nft_id| nft_get(NftOwnedId(nft_id, owner)))
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

pub fn create_nft(args: NftCreate) -> Option<NftId> {
    let id = nft_get_id() + 1;
    let id: NftId = id.into();

    if nft_cap_check(id).is_err() {
        return None;
    }

    let id: u128 = nft_inc_id();
    let id: NftId = id.into();
    let owner = args.owner;
    let id_owned = NftOwnedId(id, args.owner);

    let (contents_headers, contents) = create_contents(args.contents)?;
    let modules = ModuleDesc::create_many(args.modules)?;

    let nft_data = NftData {
        id,
        melted: args.melted,
        attrs: args.attrs.into(),
        contents_headers,
        contents,
        modules: modules,
    };

    NFTS_DATA.with(|nfts_data| {
        nfts_data.borrow_mut().insert(id, nft_data);
    });

    NFTS_EXECS.with(|nfts_execs| {
        let nfts_execs = nfts_execs.borrow_mut().insert(
            id_owned,
            NftExecs {
                executions: args.executions,
            },
        );
    });

    NFTS_MEMORY.with(|memory| {
        memory.borrow_mut().insert(id_owned, NftMemory::default());
    });

    NFTS_OWNERS.with(|nfts_owners| {
        let mut nfts_owners = nfts_owners.borrow_mut();

        if let Some(mut owners) = nfts_owners.get(&id) {
            owners.0.push(NftOwner::create(owner));

            nfts_owners.insert(id, owners);
        } else {
            nfts_owners.insert(id, NftOwners(vec![NftOwner::create(owner)]));
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

pub fn parse_program(program: ProgramCreate) -> Vec<(String, Vec<u8>)> {
    match program {
        ProgramCreate::Wat(name, code) => {
            let wasm = wat::parse_str(&code).unwrap_or(vec![]);
            vec![(name, wasm)]
        }
        ProgramCreate::Binary(name, code) => {
            vec![(name, code)]
        }
    }
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

fn define_main_imports(
    owner: Principal,
    nft_id: NftId,
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
) {
    let id_owned = NftOwnedId(nft_id, owner);

    // Melting

    ImportName::MeltGet.define_get_i32(store, linker, move || {
        nft_melt_get(nft_id).unwrap_or(false) as i32
    });

    ImportName::MeltSet.define_set(store, linker, move |nfts_updates| {
        nfts_updates.push(NftUpdate::Melt(true));

        nft_melt_set(nft_id);
    });

    // Memory

    ImportName::MemoryKeys.define_get_buffer(
        ExportName::MemoryKeysBuffer.to_string(),
        store,
        linker,
        move || nft_memory_keys(id_owned),
    );

    ImportName::MemoryGet.define_get_buffer_by_i32(
        ExportName::MemoryBuffer.to_string(),
        store,
        linker,
        move |key| nft_memory_get_by_key(id_owned, key as u8),
    );

    ImportName::MemorySet.define_set_buffer_by_i32(
        ExportName::MemoryBuffer.to_string(),
        store,
        linker,
        move |nfts_updates, key, data| {
            nft_memory_set_by_key(id_owned, key as u8, data.clone());

            let tag = nft_memory_get_tag_by_key(id_owned, key as u8);

            let mut update_data = None;

            if tag.is_show_updated() {
                update_data = Some(data);
            }

            nfts_updates.push(NftUpdate::Memory(key as u8, update_data));
        },
    );

    // Mint

    ImportName::MintExec.define_set_ret_buffer(
        ExportName::MintExecBuffer.to_string(),
        store,
        linker,
        move |data| {
            // TODO: dbg
            ic_cdk::println!("mint exec call");

            let program = ProgramCreate::from_buf(&data);

            // ic_cdk::println!("mint exec call", program.);

            if program.is_none() {
                ic_cdk::println!("mint exec program is none");
                let result = ProgramCreateResult::Err(ProgramCreateErr::InvalidProgram);
                return result.into();
            }

            let id = update_modules(parse_program(program.unwrap()));

            ic_cdk::println!("mint exec program id: {}", id);

            let result = ProgramCreateResult::Ok(id);

            result.into()
        },
    );

    ImportName::Mint.define_set_ret_buffer(
        ExportName::MintBuffer.to_string(),
        store,
        linker,
        move |data| {
            // TODO: dbg
            ic_cdk::println!("mint call");

            let mint_params = MintParams::from_buf(&data);

            if mint_params.is_none() {
                let result = MintResult::Err(MintError::InvalidParams);
                return result.into();
            }

            let args = mint_params.unwrap();

            let owner = Principal::from_text(args.owner);

            if owner.is_err() {
                let result = MintResult::Err(MintError::InvalidPrincipal);
                return result.into();
            }

            let nft_data_create = NftCreate {
                owner: owner.unwrap(),
                executions: args.executions,
                melted: args.melted.unwrap_or(true),
                attrs: args.attrs,
                contents: args.contents,
                modules: args.modules,
            };

            let result = create_nft(nft_data_create)
                .map(|id| MintResult::Ok(id.into()))
                .unwrap_or(MintResult::Err(MintError::NftCreateError));

            result.into()
        },
    );
}

fn with_main_instance<R>(
    owner: Principal,
    module: Module,
    nft_data: Option<NftData>,
    f: impl FnOnce(&mut WasmiStore, WasmiInstance, WasmiMemory) -> R,
) -> R {
    with_wasmi(|engine, store, linker| {
        let wasm_code = get_module_code(module.id);
        let wasm_module =
            WasmiModule::new(engine, &mut &wasm_code[..]).expect("can't create module");

        let nft_id = nft_data.map(|nft_data| nft_data.id);

        if let Some(nft_id) = nft_id {
            define_main_imports(owner, nft_id, &mut *store, &mut *linker);
        }

        let instance = linker
            .instantiate(&mut *store, &wasm_module)
            .expect("can't instantiate")
            .start(&mut *store)
            .expect("can't start");

        let memory = instance
            .get_memory(&store, "memory")
            .expect("failed to find memory export");

        f(&mut *store, instance, memory)
    })
}

fn exec_main(owner: Principal, module: Module, nft_data: NftData, data: Vec<u8>) -> NftExec {
    with_main_instance(owner, module, Some(nft_data), |store, instance, memory| {
        let data_len = data.len();

        let buffer_ptr =
            wasmi_exec_fn::<(), i32>(&ExportName::MainBuffer, instance, store, ()) as usize;

        let wasm_memory = memory.data_mut(&mut *store);

        wasm_memory[buffer_ptr..(buffer_ptr + data_len)].copy_from_slice(&data);

        let result_len =
            wasmi_exec_fn::<i32, i32>(&ExportName::Main, instance, store, data_len as i32) as usize;

        let wasm_memory = memory.data_mut(&mut *store);

        let result = wasm_memory[buffer_ptr..(buffer_ptr + result_len)].to_vec();

        wasmi_exec_fn::<(), ()>(&ExportName::MainBufferFree, instance, store, ());

        let nfts_updates = store.data().nfts_updates.clone();

        NftExec(result, nfts_updates)
    })
}

pub fn exec_run(id: NftOwnedId, data: Vec<u8>) -> Result<NftExec, NftExecErr> {
    let nft_data = nft_data_get(id.0);

    if nft_data.is_none() {
        return Err(NftExecErr::NftDataNotFound);
    }

    let nft_data = nft_data.unwrap();

    let module = get_module_by_export_ids(Export::Main, nft_data.get_all_modules());

    if module.is_none() {
        return Err(NftExecErr::ModuleNotFound);
    }

    let module = module.unwrap();

    Ok(exec_main(id.1, module, nft_data, data))
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
