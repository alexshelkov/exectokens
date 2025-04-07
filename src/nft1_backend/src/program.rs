use crate::{
    engine::{wasmi_exec_caller_fn, wasmi_exec_fn, StoreState, WasmiLinker, WasmiStore},
    nft::NftUpdate,
};
use bitflags::{bitflags, parser};
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::{
    storable::{Blob, Bound},
    Storable,
};
use nft1_core::{attrs::{Attr, AttrVal}, modules::ModuleDescCreate};
use std::fmt;
use std::{borrow::Cow, cell::RefCell};
use wasmi::{
    core::ValType, AsContext, AsContextMut, Caller as WasmiCaller, ExternType as WasmiExternType,
    Func as WasmiFunc, Global as WasmiGlobal, Instance as WasmiInstance, IntoFunc as WasmiIntoFunc,
    Memory as WasmiMemory, Module as WasmiModule, TypedFunc as WasmiTypedFunc, TypedFunc,
};

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq, Default)]
pub enum ViewEngine {
    #[default]
    Empty,
    Canvas,
    Command,
}

impl From<&str> for ViewEngine {
    fn from(value: &str) -> Self {
        match value {
            EXPORT_VIEW => Self::Empty,
            EXPORT_VIEW_CANVAS => Self::Canvas,
            EXPORT_VIEW_COMMAND => Self::Command,
            _ => panic!("Unreachable"),
        }
    }
}

impl fmt::Display for ViewEngine {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let name = match &self {
            Self::Empty => "Empty",
            Self::Canvas => "Canvas",
            Self::Command => "Command",
        };

        write!(f, "{}", name)
    }
}

const EXPORT_MAIN: &str = "smart_nft_main";
const EXPORT_MAIN_BUFFER: &str = "smart_nft_main_buffer";
const EXPORT_MAIN_BUFFER_FREE: &str = "smart_nft_main_buffer_free";
const EXPORT_VIEW: &str = "smart_nft_view";
const EXPORT_VIEW_CANVAS: &str = "smart_nft_view_canvas";
const EXPORT_VIEW_COMMAND: &str = "smart_nft_view_command";
const EXPORT_LIMITS: &str = "smart_nft_limits";
const EXPORT_MEMORY_BUFFER: &str = "smart_nft_memory_buffer";
const EXPORT_MEMORY_KEYS_BUFFER: &str = "smart_nft_memory_keys_buffer";
const EXPORT_MINT_EXEC_BUFFER: &str = "smart_nft_mint_exec_buffer";
const EXPORT_MINT_BUFFER: &str = "smart_nft_mint_buffer";

#[derive(CandidType, Serialize, Deserialize, Clone, Copy, Debug, PartialEq)]
pub enum ExportName {
    Main,
    MainBuffer,
    MainBufferFree,
    MemoryBuffer,
    MemoryKeysBuffer,
    MintExecBuffer,
    MintBuffer,
}

impl std::ops::Deref for ExportName {
    type Target = str;

    fn deref(&self) -> &Self::Target {
        match self {
            Self::Main => EXPORT_MAIN,
            Self::MainBuffer => EXPORT_MAIN_BUFFER,
            Self::MainBufferFree => EXPORT_MAIN_BUFFER_FREE,
            Self::MemoryBuffer => EXPORT_MEMORY_BUFFER,
            Self::MemoryKeysBuffer => EXPORT_MEMORY_KEYS_BUFFER,
            Self::MintExecBuffer => EXPORT_MINT_EXEC_BUFFER,
            Self::MintBuffer => EXPORT_MINT_BUFFER,
        }
    }
}

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq)]
pub enum Export {
    Main,
    View(ViewEngine),
    User(String),
}

impl From<&str> for Export {
    fn from(value: &str) -> Self {
        match value {
            EXPORT_MAIN => Self::Main,
            EXPORT_VIEW | EXPORT_VIEW_CANVAS | EXPORT_VIEW_COMMAND => {
                Self::View(ViewEngine::from(value))
            }
            _ => Self::User(value.to_owned()),
        }
    }
}

impl Into<String> for Export {
    fn into(self) -> String {
        match self {
            Self::Main => EXPORT_MAIN.to_owned(),
            Self::View(view) => format!("View({})", view),
            Self::User(name) => format!("User({})", name),
        }
    }
}

const IMPORT_MEMORY_KEYS: &str = "smart_nft_memory_keys";
const IMPORT_MEMORY_GET: &str = "smart_nft_memory_get";
const IMPORT_MEMORY_SET: &str = "smart_nft_memory_set";

const IMPORT_CONTENTS_HEADERS_GET: &str = "smart_nft_contents_headers_get";
const IMPORT_CONTENTS_GET: &str = "smart_nft_contents_get";
const IMPORT_CONTENTS_HEADERS_SET: &str = "smart_nft_contents_headers_set";
const IMPORT_CONTENTS_SET: &str = "smart_nft_contents_set";

const IMPORT_MODULES_GET: &str = "smart_nft_modules_get";
const IMPORT_MODULES_HIDDEN_GET: &str = "smart_nft_modules_hidden_get";
const IMPORT_MODULES_SET: &str = "smart_nft_modules_set";
const IMPORT_MODULES_HIDDEN_SET: &str = "smart_nft_modules_hidden_set";

const IMPORT_MODULES_ATTR_GET: &str = "smart_nft_attr_get";
const IMPORT_MODULES_ATTR_SET: &str = "smart_nft_attr_set";

const IMPORT_MELT_GET: &str = "smart_nft_melt_get";
const IMPORT_MELT_SET: &str = "smart_nft_melt_set";

const IMPORT_MINT_EXEC: &str = "smart_nft_mint_exec";
const IMPORT_MINT: &str = "smart_nft_mint";

#[derive(CandidType, Serialize, Deserialize, Clone, Copy, Debug, PartialEq)]
pub enum ImportName {
    MemoryKeys,
    MemorySet,
    MemoryGet,

    ContentsHeadersGet,
    ContentsGet,
    ContentsHeadersSet,
    ContentsSet,

    ModulesGet,
    ModulesSet,

    AttrGet,
    AttrSet,

    MeltGet,
    MeltSet,

    MintExec,
    Mint,
}

impl std::ops::Deref for ImportName {
    type Target = str;

    fn deref(&self) -> &Self::Target {
        match self {
            Self::MemoryKeys => IMPORT_MEMORY_KEYS,
            Self::MemoryGet => IMPORT_MEMORY_GET,
            Self::MemorySet => IMPORT_MEMORY_SET,

            Self::ContentsHeadersGet => IMPORT_CONTENTS_HEADERS_GET,
            Self::ContentsGet => IMPORT_CONTENTS_GET,
            Self::ContentsHeadersSet => IMPORT_CONTENTS_HEADERS_SET,
            Self::ContentsSet => IMPORT_CONTENTS_SET,

            Self::ModulesGet => IMPORT_MODULES_GET,
            Self::ModulesSet => IMPORT_MODULES_SET,

            Self::AttrGet => IMPORT_MODULES_ATTR_GET,
            Self::AttrSet => IMPORT_MODULES_ATTR_SET,

            Self::MeltGet => IMPORT_MELT_GET,
            Self::MeltSet => IMPORT_MELT_SET,

            Self::MintExec => IMPORT_MINT_EXEC,
            Self::Mint => IMPORT_MINT,
        }
    }
}

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq)]
pub enum Import {
    Import(String),
    ImportFn {
        name: String,
        params: Vec<String>,
        returns: Vec<String>,
    },
}

impl ImportName {
    pub fn define_get_i32(
        &self,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn() -> i32 + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(store, move |caller: WasmiCaller<'_, StoreState>| f());

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!("Failed to define import for {:?}", &self));
    }

    pub fn define_set_i32(
        &self,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn(i32) -> () + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |caller: WasmiCaller<'_, StoreState>, params: i32| {
                f(params);
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "{} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }

    pub fn define_set(
        &self,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn(&mut Vec<NftUpdate>) -> () + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |mut caller: WasmiCaller<'_, StoreState>| {
                let store_data = caller.data_mut();
                let nfts_updates = &mut store_data.nfts_updates;

                f(nfts_updates);
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "{} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }

    pub fn define_get_buffer(
        &self,
        buffer_name: String,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn() -> Vec<u8> + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |mut caller: WasmiCaller<'_, StoreState>| -> i32 {
                let buffer_ptr =
                    wasmi_exec_caller_fn::<(), i32>(&buffer_name, &mut caller, ()) as usize;

                let memory = caller
                    .get_export("memory")
                    .expect("failed to find export")
                    .into_memory()
                    .expect("failed to unwrap memory");

                let vec = f();
                let len = vec.len();

                let wasm_memory = memory.data_mut(&mut caller);
                wasm_memory[buffer_ptr..buffer_ptr + len].copy_from_slice(&vec);

                wasmi_exec_caller_fn::<(), ()>(&format!("{}_free", &buffer_name), &mut caller, ());

                vec.len() as i32
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "{} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }

    pub fn define_set_ret_buffer(
        &self,
        buffer_name: String,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn(Vec<u8>) -> Vec<u8> + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |mut caller: WasmiCaller<'_, StoreState>, len: i32| -> i32 {
                let buffer_ptr =
                    wasmi_exec_caller_fn::<(), i32>(&buffer_name, &mut caller, ()) as usize;

                let memory = caller
                    .get_export("memory")
                    .expect("failed to find export")
                    .into_memory()
                    .expect("failed to unwrap memory");

                let memory = memory.data_mut(&mut caller);

                let data = memory[buffer_ptr..(buffer_ptr + len as usize)].to_vec();

                wasmi_exec_caller_fn::<(), ()>(&format!("{}_free", &buffer_name), &mut caller, ());

                let vec = f(data);

                let memory = caller
                    .get_export("memory")
                    .expect("failed to find export")
                    .into_memory()
                    .expect("failed to unwrap memory");

                let wasm_memory = memory.data_mut(&mut caller);
                wasm_memory[buffer_ptr..buffer_ptr + vec.len()].copy_from_slice(&vec);

                vec.len() as i32
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "define_set_ret_buffer {} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }

    pub fn define_get_buffer_by_i32(
        &self,
        buffer_name: String,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn(i32) -> Vec<u8> + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |mut caller: WasmiCaller<'_, StoreState>, key: i32| -> i32 {
                let buffer_ptr =
                    wasmi_exec_caller_fn::<i32, i32>(&buffer_name, &mut caller, key) as usize;

                let memory = caller
                    .get_export("memory")
                    .expect("failed to find export")
                    .into_memory()
                    .expect("failed to unwrap memory");

                let vec = f(key);
                let len = vec.len();

                let wasm_memory = memory.data_mut(&mut caller);
                wasm_memory[buffer_ptr..buffer_ptr + len].copy_from_slice(&vec);

                wasmi_exec_caller_fn::<i32, ()>(
                    &format!("{}_free", &buffer_name),
                    &mut caller,
                    key,
                );

                vec.len() as i32
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "{} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }

    pub fn define_set_buffer_by_i32(
        &self,
        buffer_name: String,
        store: &mut WasmiStore,
        linker: &mut WasmiLinker,
        f: impl Fn(&mut Vec<NftUpdate>, i32, Vec<u8>) -> () + Sync + Send + 'static,
    ) {
        let import_fn = WasmiFunc::wrap(
            &mut *store,
            move |mut caller: WasmiCaller<'_, StoreState>, key: i32, len: i32| {
                let buffer_ptr =
                    wasmi_exec_caller_fn::<i32, i32>(&buffer_name, &mut caller, key) as usize;

                let memory = caller
                    .get_export("memory")
                    .expect("failed to find export")
                    .into_memory()
                    .expect("failed to unwrap memory");

                let memory = memory.data_mut(&mut caller);

                let data = memory[buffer_ptr..(buffer_ptr + len as usize)].to_vec();

                wasmi_exec_caller_fn::<i32, ()>(
                    &format!("{}_free", &buffer_name),
                    &mut caller,
                    key,
                );

                let store_data = caller.data_mut();
                let nfts_updates = &mut store_data.nfts_updates;

                f(nfts_updates, key, data);
            },
        );

        linker
            .define("smart_nft", &self, import_fn)
            .expect(&format!(
                "{} can't define import {:?}",
                stringify!($func_name),
                self
            ));
    }
}

impl From<(&str, &WasmiExternType)> for Import {
    fn from((name, typ): (&str, &WasmiExternType)) -> Self {
        match typ {
            WasmiExternType::Func(f) => {
                let params = f.params().into_iter().map(|e| format!("{:?}", e)).collect();
                let returns = f
                    .results()
                    .into_iter()
                    .map(|e| format!("{:?}", e))
                    .collect();

                Self::ImportFn {
                    name: name.into(),
                    params,
                    returns,
                }
            }
            _ => return Self::Import(name.into()),
        }
    }
}

#[derive(
    CandidType, Deserialize, Serialize, Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord,
)]
pub struct ModuleId(pub u32);

impl ModuleId {
    pub fn ids_from_buf(buf: Vec<u8>) -> Option<Vec<Self>> {
        let mut module_ids: Vec<ModuleId> = vec![];

        for buf in buf.windows(4) {
            if let Some(buf) = buf.try_into().ok() {
                let id = u32::from_le_bytes(buf);
                module_ids.push(ModuleId(id));
            } else {
                return None;
            }
        }

        Some(module_ids)
    }

    pub fn ids_to_buf(ids: Vec<ModuleId>) -> Vec<u8> {
        let mut ids_buf: Vec<u8> = vec![];

        for id in ids {
            let buf = id.0.to_le_bytes();

            ids_buf.extend(buf)
        }

        ids_buf
    }
}

impl Into<ModuleDesc> for (ModuleId, ModuleTag) {
    fn into(self) -> ModuleDesc {
        ModuleDesc {
            id: self.0,
            tag: if self.1.is_empty() {
                ModuleTag::default()
            } else {
                self.1
            },
        }
    }
}

#[derive(CandidType, Deserialize, Serialize, Clone, Copy, Debug)]
pub struct ModuleTag(u16);

impl Default for ModuleTag {
    fn default() -> Self {
        Self(0b00000001)
    }
}

bitflags! {
    impl ModuleTag: u16 {
        const Public =  0b00000001;
        const Private = 0b00000010;
    }
}

#[derive(CandidType, Deserialize, Serialize, Clone, Copy, Debug)]
pub struct ModuleDesc {
    pub id: ModuleId,
    pub tag: ModuleTag,
}

impl ModuleDesc {
    pub fn create_many(decs_create: Vec<ModuleDescCreate>) -> Option<Vec<Self>> {
        let mut decs = vec![];

        for desc_create in decs_create {
            let tag: ModuleTag = if let Some(tag_str) = desc_create.1 {
                parser::from_str(&tag_str).ok()?
            } else {
                ModuleTag::default()
            };

            decs.push(Self {
                id: ModuleId(desc_create.0),
                tag,
            });
        }

        Some(decs)
    }
}

#[cfg(test)]
mod module_desc {
    use super::*;

    #[test]
    fn create_many() {
        let d1 = ModuleDesc::create_many(vec![ModuleDescCreate(1, Some("error".into()))]);
        assert!(d1.is_none());

        let d2 = ModuleDesc::create_many(vec![ModuleDescCreate(1, None)]).unwrap();
        assert_eq!(d2[0].id, ModuleId(1));
        let d2: Vec<_> = d2[0].tag.iter_names().collect();
        assert_eq!(d2[0].0, "Public");

        let d3 =
            ModuleDesc::create_many(vec![ModuleDescCreate(2, Some("Private".into()))]).unwrap();
        assert_eq!(d3[0].id, ModuleId(2));
        let d3: Vec<_> = d3[0].tag.iter_names().collect();
        assert_eq!(d3[0].0, "Private");
    }
}

impl Into<ModuleId> for ModuleDesc {
    fn into(self) -> ModuleId {
        self.id
    }
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct Module {
    pub id: ModuleId,
    pub name: String,
    pub exports: Vec<Export>,
    pub imports: Vec<Import>,
}

impl Module {
    pub fn new(id: u32, name: String, exports: Vec<Export>, imports: Vec<Import>) -> Self {
        Self {
            id: ModuleId(id),
            name,
            exports,
            imports,
        }
    }
}

impl Storable for Module {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct DataModule(pub Module, pub Vec<u8>);

pub fn define_import_set_buf_val(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>, ptr: i32, len: i32| {
    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let wasm_memory = memory.data_mut(&mut caller);

    //         let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();

    //         let free_fn = caller
    //             .get_export("__wbindgen_free")
    //             .expect("failed to find free_fn")
    //             .into_func()
    //             .expect("failed to unwrap free_fn")
    //             .typed::<(i32, i32, i32), ()>(caller.as_context())
    //             .expect("failed to type free_fn");

    //         free_fn
    //             .call(caller.as_context_mut(), (ptr, len, 1))
    //             .expect("failed to free memory");

    //         f(data) as i32
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_set_buf_val_by_u8_key can't export {}",
    //         import_fn_full_name
    //     ));
}

pub fn define_import_set_buf_val_by_u16_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(u16, Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>, key: i32, ptr: i32, len: i32| {
    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let wasm_memory = memory.data_mut(&mut caller);

    //         let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();

    //         let free_fn = caller
    //             .get_export("__wbindgen_free")
    //             .expect("failed to find free_fn")
    //             .into_func()
    //             .expect("failed to unwrap free_fn")
    //             .typed::<(i32, i32, i32), ()>(caller.as_context())
    //             .expect("failed to type free_fn");

    //         free_fn
    //             .call(caller.as_context_mut(), (ptr, len, 1))
    //             .expect("failed to free memory");

    //         f(key.try_into().unwrap_or(0), data) as i32
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_set_buf_val_by_u8_key can't export {}",
    //         import_fn_full_name
    //     ));
}

pub fn define_import_fn_get_buf_val(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn() -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32| {
    //         let malloc_fn = caller
    //             .get_export("__wbindgen_malloc")
    //             .expect("failed to find malloc_fn")
    //             .into_func()
    //             .expect("failed to unwrap malloc_fn")
    //             .typed::<(i32, i32), i32>(caller.as_context())
    //             .expect("failed to type malloc_fn");

    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let vec = f();
    //         let len = vec.len();

    //         let ptr: usize = malloc_fn
    //             .call(caller.as_context_mut(), (len as i32, 1))
    //             .expect("Failed to allocate memory")
    //             .try_into()
    //             .expect("failed to convert to usize");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[ptr..ptr + len].copy_from_slice(&vec);

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr.to_le_bytes());
    //         wasm_memory[retptr as usize + 4..retptr as usize + 8]
    //             .copy_from_slice(&len.to_le_bytes());
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_fn_get_buf_val can't export {}",
    //         import_fn_full_name
    //     ));
}

pub fn define_import_fn_get_buf_val_by_u16_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(u16) -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32, key: i32| {
    //         let malloc_fn = caller
    //             .get_export("__wbindgen_malloc")
    //             .expect("failed to find malloc_fn")
    //             .into_func()
    //             .expect("failed to unwrap malloc_fn")
    //             .typed::<(i32, i32), i32>(caller.as_context())
    //             .expect("failed to type malloc_fn");

    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let vec = f(key.try_into().unwrap());
    //         let len = vec.len();

    //         let ptr: usize = malloc_fn
    //             .call(caller.as_context_mut(), (len as i32, 1))
    //             .expect("Failed to allocate memory")
    //             .try_into()
    //             .expect("failed to convert to usize");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[ptr..ptr + len].copy_from_slice(&vec);

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr.to_le_bytes());
    //         wasm_memory[retptr as usize + 4..retptr as usize + 8]
    //             .copy_from_slice(&len.to_le_bytes());
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_fn_get_buf_val can't export {}",
    //         import_fn_full_name
    //     ));
}

pub fn define_import_fn_get_buf_val_by_str_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(String) -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32, ptr: i32, len: i32| {
    //         let malloc_fn = caller
    //             .get_export("__wbindgen_malloc")
    //             .expect("failed to find malloc_fn")
    //             .into_func()
    //             .expect("failed to unwrap malloc_fn")
    //             .typed::<(i32, i32), i32>(caller.as_context())
    //             .expect("failed to type malloc_fn");

    //         let free_fn = caller
    //             .get_export("__wbindgen_free")
    //             .expect("failed to find free_fn")
    //             .into_func()
    //             .expect("failed to unwrap free_fn")
    //             .typed::<(i32, i32, i32), ()>(caller.as_context())
    //             .expect("failed to type free_fn");

    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();
    //         let attr_name = String::from_utf8(data).unwrap();

    //         let vec = f(attr_name);
    //         let len2 = vec.len();

    //         let ptr2: usize = malloc_fn
    //             .call(caller.as_context_mut(), (len2 as i32, 1))
    //             .expect("Failed to allocate memory")
    //             .try_into()
    //             .expect("failed to convert to usize");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[ptr2..ptr2 + len2].copy_from_slice(&vec);

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr2.to_le_bytes());
    //         wasm_memory[retptr as usize + 4..retptr as usize + 8]
    //             .copy_from_slice(&len2.to_le_bytes());

    //         free_fn
    //             .call(caller.as_context_mut(), (ptr, len, 1))
    //             .expect("failed to free memory");
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_fn_get_vec_str_val can't export {}",
    //         import_fn_full_name
    //     ));
}

pub fn define_import_fn_set_buf_val_by_str_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(String, Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    // let import_fn_full_name = get_full_import_name(name, imports);

    // if import_fn_full_name.is_none() {
    //     return;
    // }

    // let import_fn = WasmiFunc::wrap(
    //     &mut *store,
    //     move |mut caller: WasmiCaller<'_, StoreState>,
    //           ptr1: i32,
    //           len1: i32,
    //           ptr2: i32,
    //           len2: i32| {
    //         let malloc_fn = caller
    //             .get_export("__wbindgen_malloc")
    //             .expect("failed to find malloc_fn")
    //             .into_func()
    //             .expect("failed to unwrap malloc_fn")
    //             .typed::<(i32, i32), i32>(caller.as_context())
    //             .expect("failed to type malloc_fn");

    //         let free_fn = caller
    //             .get_export("__wbindgen_free")
    //             .expect("failed to find free_fn")
    //             .into_func()
    //             .expect("failed to unwrap free_fn")
    //             .typed::<(i32, i32, i32), ()>(caller.as_context())
    //             .expect("failed to type free_fn");

    //         let memory = caller
    //             .get_export("memory")
    //             .expect("failed to find export")
    //             .into_memory()
    //             .expect("failed to unwrap memory");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         let params = wasm_memory[ptr2 as usize..(ptr2 + len2) as usize].to_vec();

    //         free_fn
    //             .call(caller.as_context_mut(), (ptr2, len2, 1))
    //             .expect("failed to free memory");

    //         let wasm_memory = memory.data_mut(&mut caller);
    //         let data = wasm_memory[ptr1 as usize..(ptr1 + len1) as usize].to_vec();
    //         let attr_name = String::from_utf8(data).unwrap();

    //         free_fn
    //             .call(caller.as_context_mut(), (ptr1, len1, 1))
    //             .expect("failed to free memory");

    //         f(attr_name, params) as i32
    //     },
    // );

    // let import_fn_full_name = import_fn_full_name.unwrap();

    // linker
    //     .define("wbg", &import_fn_full_name, import_fn)
    //     .expect(&format!(
    //         "define_import_fn_get_vec_str_val can't export {}",
    //         import_fn_full_name
    //     ));
}
