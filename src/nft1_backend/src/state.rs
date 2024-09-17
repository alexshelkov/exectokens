use crate::engine::{with_wasmi, WasmiLinker, WasmiStore};
use crate::memory::{Memory, MEM_IDS};
use crate::nft::{
    Collection, NftCreate, NftData, NftExecs, NftId, NftMemory, NftOwnedId, NftOwners, OwnerNfts,
};
use crate::program::{
    define_import_fn_get_buf_val, define_import_fn_get_buf_val_by_str_key, define_import_fn_get_buf_val_by_u16_key, define_import_fn_set_buf_val_by_str_key, define_import_get_i32_val, define_import_set_buf_val, define_import_set_buf_val_by_u16_key, define_import_set_primitive_val, DataModule, Export, Import, ImportName, Module, ModuleDesc, ModuleId, ModuleTag
};
use anyhow::{anyhow, Result};
use candid::types::result;
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::memory_manager::{MemoryId, MemoryManager, VirtualMemory};
use ic_stable_structures::vec;
use ic_stable_structures::{
    DefaultMemoryImpl, StableBTreeMap, StableCell, StableLog, StableMinHeap, StableVec,
};
use nft1_core::{
    attrs::{Attr, AttrVal},
    contents::{ContentHeader, Contents, ContentsCreate, HeaderBase},
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

    pub static NFT_LAST_ID: RefCell<StableCell<u128, Memory>> = RefCell::new(
        StableCell::init(MEM_IDS.nft_last_id(), 0)
            .expect("NFT_LAST_ID stable memory config initialization failed")
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

pub fn nft_contents_get(id: NftId) -> Option<(Vec<ContentHeader>, Vec<u8>)> {
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
    let memory = nft_memory_get(id);

    if memory.is_none() {
        return vec![];
    }

    let memory = memory.unwrap();

    memory.0.get(&key).map(|vec| vec.to_vec()).unwrap_or(vec![])
}

pub fn nft_memory_set(id: NftOwnedId, key: u8, data: Vec<u8>) -> bool {
    let res = NFTS_MEMORY.with(|nfts_memory| {
        let mut nfts_memory = nfts_memory.borrow_mut();

        let memory = nfts_memory.get(&id);

        if memory.is_none() {
            return false;
        }

        let mut memory = memory.unwrap();

        memory.0.insert(key, data);

        nfts_memory.insert(id, memory);

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

pub fn nft_attr_get(id: NftId, key: String) -> Option<AttrVal> {
    let nft_data = nft_data_get(id)?;

    if let Some(attr) = nft_data.attrs.iter().find(|attr| attr.name == key) {
        return Some(attr.val.clone());
    }

    None
}

pub fn nft_attr_set(id: NftId, key: String, val: AttrVal) -> bool {
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

        if let Some(index) = nft.attrs.iter().position(|attr| attr.name == key) {
            nft.attrs[index] = Attr {
                name: key.clone(),
                val,
            };

            nfts_data.insert(id, nft);

            true
        } else {
            nft.attrs = vec![Attr {
                name: key.clone(),
                val,
            }];

            nfts_data.insert(id, nft);

            true
        }
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
    let (contents_headers, contents) = Contents::create_many(args.contents)?;
    let modules = ModuleDesc::create_many(args.modules)?;

    let id: u128 = nft_inc_id();
    let id: NftId = id.into();
    let owner = args.owner;
    let id_owned = NftOwnedId(id, args.owner);

    let nft_data = NftData {
        id,
        melted: args.melted,
        attrs: args.attrs,
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
                refills: args.refills,
            },
        );
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
    // Melting

    define_import_get_i32_val(
        ImportName::MeltGet,
        &imports,
        &mut *store,
        &mut *linker,
        move || nft_melt_get(nft_id).unwrap_or(false) as i32,
    );

    define_import_set_primitive_val(
        ImportName::MeltSet,
        &imports,
        &mut *store,
        &mut *linker,
        move || nft_melt_set(nft_id),
    );

    // Memory

    define_import_fn_get_buf_val(
        ImportName::MemoryKeys,
        &imports,
        &mut *store,
        &mut *linker,
        move || nft_memory_keys(NftOwnedId(nft_id, owner)),
    );

    define_import_fn_get_buf_val_by_u16_key(
        ImportName::MemoryGet,
        &imports,
        &mut *store,
        &mut *linker,
        move |key| nft_memory_get_by_key(NftOwnedId(nft_id, owner), key as u8),
    );

    define_import_set_buf_val_by_u16_key(
        ImportName::MemorySet,
        &imports,
        &mut *store,
        &mut *linker,
        move |key, data| nft_memory_set(NftOwnedId(nft_id, owner), key as u8, data),
    );

    // Modules

    // for name in [ImportName::ModulesGet, ImportName::ModulesHiddenGet] {
    define_import_fn_get_buf_val_by_u16_key(
        ImportName::ModulesGet,
        &imports,
        &mut *store,
        &mut *linker,
        move |tag| {
            let tag = ModuleTag::from_bits(tag);

            if tag.is_none() {
                return vec![];
            }

            let ids = nft_modules_get(nft_id, tag.unwrap());

            ids.map(|ids| ModuleId::ids_to_buf(ids)).unwrap_or(vec![])
        },
    );

    define_import_set_buf_val_by_u16_key(
        ImportName::ModulesSet,
        &imports,
        &mut *store,
        &mut *linker,
        move |tag, data| {
            let tag = ModuleTag::from_bits(tag);

            if tag.is_none() {
                return false;
            }

            let ids = ModuleId::ids_from_buf(data);

            ids.map(|ids| nft_modules_set(nft_id, ids, tag.unwrap()))
                .unwrap_or(false)
        },
    );

    // Contents

    for name in [ImportName::ContentsGet, ImportName::ContentsHeadersGet] {
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
