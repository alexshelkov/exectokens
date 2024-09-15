use crate::{
    attrs::Attr,
    engine::{StoreState, WasmiLinker, WasmiStore},
};
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::{
    storable::{Blob, Bound},
    Storable,
};
use std::fmt;
use std::{borrow::Cow, cell::RefCell};
use wasmi::{
    core::ValType, AsContext, AsContextMut, Caller as WasmiCaller, ExternType as WasmiExternType,
    Func as WasmiFunc, Global as WasmiGlobal, Instance as WasmiInstance, Memory as WasmiMemory,
    Module as WasmiModule, TypedFunc as WasmiTypedFunc, TypedFunc,
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
const EXPORT_VIEW: &str = "smart_nft_view";
const EXPORT_VIEW_CANVAS: &str = "smart_nft_view_canvas";
const EXPORT_VIEW_COMMAND: &str = "smart_nft_view_command";
const EXPORT_LIMITS: &str = "smart_nft_limits";

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

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq)]
pub enum Import {
    Import(String),
    ImportFn {
        name: String,
        params: Vec<String>,
        returns: Vec<String>,
    },
}

const IMPORT_MEMORY_KEYS: &str = "smartnft_memory_keys";
const IMPORT_MEMORY_GET: &str = "smartnft_memory_get";
const IMPORT_MEMORY_SET: &str = "smartnft_memory_set";

const IMPORT_CONTENTS_HEADERS_GET: &str = "smartnft_contents_headers_get";
const IMPORT_CONTENTS_GET: &str = "smartnft_contents_get";
const IMPORT_CONTENTS_HEADERS_SET: &str = "smartnft_contents_headers_set";
const IMPORT_CONTENTS_SET: &str = "smartnft_contents_set";

const IMPORT_MODULES_GET: &str = "smartnft_modules_get";
const IMPORT_MODULES_HIDDEN_GET: &str = "smartnft_modules_hidden_get";
const IMPORT_MODULES_SET: &str = "smartnft_modules_set";
const IMPORT_MODULES_HIDDEN_SET: &str = "smartnft_modules_hidden_set";

const IMPORT_MODULES_ATTR_GET: &str = "smart_nft_attr_get";
const IMPORT_MODULES_ATTR_SET: &str = "smart_nft_attr_set";

const IMPORT_MELT_GET: &str = "smart_nft_melt_get";
const IMPORT_MELT: &str = "smart_nft_melt";

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
    ModulesHiddenGet,
    ModulesSet,
    ModulesHiddenSet,

    AttrGet,
    AttrSet,

    MeltGet,
    Melt,
}

impl Into<String> for ImportName {
    fn into(self) -> String {
        let import_name: String = match self {
            Self::MemoryKeys => IMPORT_MEMORY_KEYS.into(),
            Self::MemoryGet => IMPORT_MEMORY_GET.into(),
            Self::MemorySet => IMPORT_MEMORY_SET.into(),

            Self::ContentsHeadersGet => IMPORT_CONTENTS_HEADERS_GET.into(),
            Self::ContentsGet => IMPORT_CONTENTS_GET.into(),
            Self::ContentsHeadersSet => IMPORT_CONTENTS_HEADERS_SET.into(),
            Self::ContentsSet => IMPORT_CONTENTS_SET.into(),

            Self::ModulesGet => IMPORT_MODULES_GET.into(),
            Self::ModulesHiddenGet => IMPORT_MODULES_HIDDEN_GET.into(),
            Self::ModulesSet => IMPORT_MODULES_SET.into(),
            Self::ModulesHiddenSet => IMPORT_MODULES_HIDDEN_SET.into(),

            Self::AttrGet => IMPORT_MODULES_ATTR_GET.into(),
            Self::AttrSet => IMPORT_MODULES_ATTR_SET.into(),

            Self::MeltGet => IMPORT_MELT_GET.into(),
            Self::Melt => IMPORT_MELT.into(),
        };

        import_name.replace("_", "")
    }
}

impl From<(&str, &WasmiExternType)> for Import {
    fn from((name, types): (&str, &WasmiExternType)) -> Self {
        match types {
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

fn get_full_import_name(search: ImportName, imports: &[Import]) -> Option<String> {
    let search: String = search.into();

    let import = imports.iter().find(|import| match import {
        Import::ImportFn {
            name,
            params,
            returns,
        } => name.contains(&search),
        _ => false,
    });

    let name = import.map(|import| match import {
        Import::ImportFn {
            name,
            params,
            returns,
        } => Some(name.clone()),
        _ => None,
    });

    if name.is_none() {
        return None;
    }

    name.unwrap()
}

macro_rules! define_import_get_primitive_val {
    ($func_name:ident, $ret_type:ty) => {
        pub fn $func_name(
            name: ImportName,
            imports: &[Import],
            store: &mut WasmiStore,
            linker: &mut WasmiLinker,
            f: impl Fn() -> $ret_type + Sync + Send + 'static,
        ) {
            let import_fn_full_name = get_full_import_name(name, imports);

            if import_fn_full_name.is_none() {
                return;
            }

            let import_fn = WasmiFunc::wrap(
                &mut *store,
                move |caller: WasmiCaller<'_, StoreState>| -> $ret_type { f() },
            );

            let import_fn_full_name = import_fn_full_name.unwrap();

            linker
                .define("wbg", &import_fn_full_name, import_fn)
                .expect(&format!(
                    "{} can't export {}",
                    stringify!($func_name),
                    import_fn_full_name
                ));
        }
    };
}

define_import_get_primitive_val!(define_import_get_i32_val, i32);

// pub fn define_import_get_primitive_val(
//     name: ImportName,
//     imports: &[Import],
//     store: &mut WasmiStore,
//     linker: &mut WasmiLinker,
//     f: impl Fn() -> i32 + std::marker::Sync + Send + 'static,
// ) {
//     let import_fn_full_name = get_full_import_name(name, imports);

//     if import_fn_full_name.is_none() {
//         return;
//     }

//     let import_fn = WasmiFunc::wrap(
//         &mut *store,
//         move |caller: WasmiCaller<'_, StoreState>| {
//             f() as i32
//         },
//     );

//     let import_fn_full_name = import_fn_full_name.unwrap();

//     linker
//         .define("wbg", &import_fn_full_name, import_fn)
//         .expect(&format!(
//             "define_import_get_primitive_val can't export {}",
//             import_fn_full_name
//         ));
// }

// pub fn define_import_get_primitive_val<T>(
//     name: String,
//     store: &mut WasmiStore,
//     linker: &mut WasmiLinker,
//     f: impl Fn() -> T + Sync + Send + 'static,
// ) where
//     T: ValType + Copy + Sync + Send + 'static, // Ensure T can be converted to `Value`
// {
//     let import_fn = WasmiFunc::wrap(&mut *store, move |caller: WasmiCaller<'_, StoreState>| {
//         let result: T = f();
//         result.into() // Convert the result into `Value`
//     });

//     linker.define("wbg", &name, import_fn).expect(&format!(
//         "define_import_get_primitive_val can't export {}",
//         name
//     ));
// }

pub fn define_import_set_primitive_val(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(i32) -> bool + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |caller: WasmiCaller<'_, StoreState>, val: i32| f(val) as i32,
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_set_primitive_val can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_set_buf_val(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>, ptr: i32, len: i32| {
            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let wasm_memory = memory.data_mut(&mut caller);

            let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();

            let free_fn = caller
                .get_export("__wbindgen_free")
                .expect("failed to find free_fn")
                .into_func()
                .expect("failed to unwrap free_fn")
                .typed::<(i32, i32, i32), ()>(caller.as_context())
                .expect("failed to type free_fn");

            free_fn
                .call(caller.as_context_mut(), (ptr, len, 1))
                .expect("failed to free memory");

            f(data) as i32
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_set_buf_val_by_u8_key can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_set_buf_val_by_u8_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(u8, Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>, key: i32, ptr: i32, len: i32| {
            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let wasm_memory = memory.data_mut(&mut caller);

            let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();

            let free_fn = caller
                .get_export("__wbindgen_free")
                .expect("failed to find free_fn")
                .into_func()
                .expect("failed to unwrap free_fn")
                .typed::<(i32, i32, i32), ()>(caller.as_context())
                .expect("failed to type free_fn");

            free_fn
                .call(caller.as_context_mut(), (ptr, len, 1))
                .expect("failed to free memory");

            f(key.try_into().unwrap_or(0), data) as i32
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_set_buf_val_by_u8_key can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_fn_get_buf_val(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn() -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32| {
            let malloc_fn = caller
                .get_export("__wbindgen_malloc")
                .expect("failed to find malloc_fn")
                .into_func()
                .expect("failed to unwrap malloc_fn")
                .typed::<(i32, i32), i32>(caller.as_context())
                .expect("failed to type malloc_fn");

            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let vec = f();
            let len = vec.len();

            let ptr: usize = malloc_fn
                .call(caller.as_context_mut(), (len as i32, 1))
                .expect("Failed to allocate memory")
                .try_into()
                .expect("failed to convert to usize");

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[ptr..ptr + len].copy_from_slice(&vec);

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr.to_le_bytes());
            wasm_memory[retptr as usize + 4..retptr as usize + 8]
                .copy_from_slice(&len.to_le_bytes());
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_fn_get_buf_val can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_fn_get_buf_val_by_u8_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(u8) -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32, key: i32| {
            let malloc_fn = caller
                .get_export("__wbindgen_malloc")
                .expect("failed to find malloc_fn")
                .into_func()
                .expect("failed to unwrap malloc_fn")
                .typed::<(i32, i32), i32>(caller.as_context())
                .expect("failed to type malloc_fn");

            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let vec = f(key.try_into().unwrap());
            let len = vec.len();

            let ptr: usize = malloc_fn
                .call(caller.as_context_mut(), (len as i32, 1))
                .expect("Failed to allocate memory")
                .try_into()
                .expect("failed to convert to usize");

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[ptr..ptr + len].copy_from_slice(&vec);

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr.to_le_bytes());
            wasm_memory[retptr as usize + 4..retptr as usize + 8]
                .copy_from_slice(&len.to_le_bytes());
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_fn_get_buf_val can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_fn_get_buf_val_by_str_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(String) -> Vec<u8> + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>, retptr: i32, ptr: i32, len: i32| {
            let malloc_fn = caller
                .get_export("__wbindgen_malloc")
                .expect("failed to find malloc_fn")
                .into_func()
                .expect("failed to unwrap malloc_fn")
                .typed::<(i32, i32), i32>(caller.as_context())
                .expect("failed to type malloc_fn");

            let free_fn = caller
                .get_export("__wbindgen_free")
                .expect("failed to find free_fn")
                .into_func()
                .expect("failed to unwrap free_fn")
                .typed::<(i32, i32, i32), ()>(caller.as_context())
                .expect("failed to type free_fn");

            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let wasm_memory = memory.data_mut(&mut caller);
            let data = wasm_memory[ptr as usize..(ptr + len) as usize].to_vec();
            let attr_name = String::from_utf8(data).unwrap();

            let vec = f(attr_name);
            let len2 = vec.len();

            let ptr2: usize = malloc_fn
                .call(caller.as_context_mut(), (len2 as i32, 1))
                .expect("Failed to allocate memory")
                .try_into()
                .expect("failed to convert to usize");

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[ptr2..ptr2 + len2].copy_from_slice(&vec);

            let wasm_memory = memory.data_mut(&mut caller);
            wasm_memory[retptr as usize..retptr as usize + 4].copy_from_slice(&ptr2.to_le_bytes());
            wasm_memory[retptr as usize + 4..retptr as usize + 8]
                .copy_from_slice(&len2.to_le_bytes());

            free_fn
                .call(caller.as_context_mut(), (ptr, len, 1))
                .expect("failed to free memory");
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_fn_get_vec_str_val can't export {}",
            import_fn_full_name
        ));
}

pub fn define_import_fn_set_buf_val_by_str_key(
    name: ImportName,
    imports: &[Import],
    store: &mut WasmiStore,
    linker: &mut WasmiLinker,
    f: impl Fn(String, Vec<u8>) -> bool + std::marker::Sync + Send + 'static,
) {
    let import_fn_full_name = get_full_import_name(name, imports);

    if import_fn_full_name.is_none() {
        return;
    }

    let import_fn = WasmiFunc::wrap(
        &mut *store,
        move |mut caller: WasmiCaller<'_, StoreState>,
              ptr1: i32,
              len1: i32,
              ptr2: i32,
              len2: i32| {
            let malloc_fn = caller
                .get_export("__wbindgen_malloc")
                .expect("failed to find malloc_fn")
                .into_func()
                .expect("failed to unwrap malloc_fn")
                .typed::<(i32, i32), i32>(caller.as_context())
                .expect("failed to type malloc_fn");

            let free_fn = caller
                .get_export("__wbindgen_free")
                .expect("failed to find free_fn")
                .into_func()
                .expect("failed to unwrap free_fn")
                .typed::<(i32, i32, i32), ()>(caller.as_context())
                .expect("failed to type free_fn");

            let memory = caller
                .get_export("memory")
                .expect("failed to find export")
                .into_memory()
                .expect("failed to unwrap memory");

            let wasm_memory = memory.data_mut(&mut caller);
            let params = wasm_memory[ptr2 as usize..(ptr2 + len2) as usize].to_vec();

            free_fn
                .call(caller.as_context_mut(), (ptr2, len2, 1))
                .expect("failed to free memory");

            let wasm_memory = memory.data_mut(&mut caller);
            let data = wasm_memory[ptr1 as usize..(ptr1 + len1) as usize].to_vec();
            let attr_name = String::from_utf8(data).unwrap();

            free_fn
                .call(caller.as_context_mut(), (ptr1, len1, 1))
                .expect("failed to free memory");

            f(attr_name, params) as i32
        },
    );

    let import_fn_full_name = import_fn_full_name.unwrap();

    linker
        .define("wbg", &import_fn_full_name, import_fn)
        .expect(&format!(
            "define_import_fn_get_vec_str_val can't export {}",
            import_fn_full_name
        ));
}
