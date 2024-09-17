use crate::{
    nft::{Collection, Nft, NftCreate, NftData, NftExecs, NftMemory, NftOwnedId},
    program::{DataModule, Export, Module, ModuleDesc, ModuleDescCreate, ModuleId},
    state::{
        create_nft, exec_run, get_data_modules, get_module_code, list_nfts, nft_data_get, nft_get,
        nft_get_id, nft_inc_id, nft_memory_get, update_collection, update_modules, with_collection,
        COLLECTION, MODULES, MODULES_DATA, NFTS_DATA, NFT_LAST_ID,
    },
};
use candid::{CandidType, Encode, Principal};
use nft1_core::{
    attrs::{Attr, AttrVal},
    contents::{Contents, ContentsCreate},
};
use serde::{Deserialize, Serialize};
use serde_json;
use std::{
    alloc::System,
    borrow::{Borrow, BorrowMut},
    collections, mem,
};

#[derive(CandidType, Deserialize)]
pub struct InitArgs {
    pub name: String,
    pub logo: String,
    pub symbol: String,
    pub author: String,
    pub program: String,
}

#[derive(CandidType, Deserialize)]
pub struct MintExecArgs {
    pub program: String,
}

#[derive(CandidType, Deserialize)]
pub struct MintArgs {
    pub owner: Principal,
    pub executions: Option<u64>,
    pub refills: Option<u64>,
    pub melted: Option<bool>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<ContentsCreate>,
    pub modules: Vec<ModuleDescCreate>,
}

#[derive(CandidType, Deserialize)]
pub enum MintError {
    NftCreateError,
}

#[derive(CandidType, Deserialize)]
pub struct AcquireArgs {
    pub id: u128,
}

#[derive(CandidType, Deserialize)]
pub struct MintStreamArgs {}

#[derive(CandidType, Deserialize)]
pub struct GetArgs {
    pub id: u128,
    pub owner: Principal,
}

#[derive(CandidType, Deserialize)]
pub struct GetMemArgs {
    pub id: u128,
}

#[derive(CandidType, Deserialize)]
pub struct ListArgs {
    pub owner: Principal,
}

#[derive(CandidType, Deserialize)]
pub struct GetExecArgs {
    pub id: u128,
}

#[derive(CandidType, Deserialize)]
pub struct ExecArgs {
    pub id: u128,
    pub command: Vec<u8>,
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub enum CodeRaw {
    Wat(String),
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct ModuleRaw {
    pub name: String,
    pub code: CodeRaw,
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct ProgramRaw {
    pub modules: Vec<ModuleRaw>,
}

impl ProgramRaw {
    fn default() -> Self {
        Self { modules: vec![] }
    }
    fn get_modules(&self) -> Vec<(String, Vec<u8>)> {
        self.modules
            .iter()
            .map(|module| match &module.code {
                CodeRaw::Wat(code) => {
                    let wasm = wat::parse_str(code).expect("can't parse wasm code");

                    (module.name.clone(), wasm)
                }
            })
            .collect()
    }
}

#[init]
fn init(args: InitArgs) {
    let program: ProgramRaw = serde_json::from_str(&args.program).expect("failed to parse code");

    update_modules(program.get_modules());

    update_collection(Collection {
        name: args.name,
        logo: Contents::create_logo(args.logo),
        symbol: args.symbol,
        author: args.author,
    });
}

// MINT
// ----------------------------------------------------------------------------------------

#[update(name = "mint_exec")]
fn mint_exec(args: MintExecArgs) -> u32 {
    let program: ProgramRaw = serde_json::from_str(&args.program).expect("failed to parse code");

    update_modules(program.get_modules())
}

#[update(name = "mint")]
fn mint(args: MintArgs) -> Result<u128, MintError> {
    let nft_data_create = NftCreate {
        owner: args.owner,
        refills: args.refills,
        executions: args.executions,
        melted: args.melted.unwrap_or(true),
        attrs: args.attrs,
        contents: args.contents,
        modules: args.modules,
    };

    create_nft(nft_data_create)
        .map(|id| Ok(id.into()))
        .unwrap_or(Err(MintError::NftCreateError))
}

#[update(name = "mint_stream")]
fn mint_stream(args: MintStreamArgs) {}

// MEMORY
// ----------------------------------------------------------------------------------------

// GET and LIST
// ----------------------------------------------------------------------------------------

#[query(name = "last_id")]
fn last_id() -> u128 {
    nft_get_id()
}

#[query(name = "collection_attrs")]
fn collection_attrs() -> Collection {
    with_collection(|collection| collection.clone())
}

#[query(name = "get_public")]
fn get_public(args: GetArgs) -> Option<Nft> {
    let id_owned = NftOwnedId(args.id.into(), args.owner);

    nft_get(id_owned).map(|(nft_data, nft_execs, nft_mem)| (nft_data, nft_execs, nft_mem).into())
}

#[query(name = "list_public")]
fn list_public(args: ListArgs) -> Vec<Nft> {
    list_nfts(args.owner)
        .into_iter()
        .map(|(nft_data, nft_execs, nft_mem)| (nft_data, nft_execs, nft_mem).into())
        .collect()
}

#[update(name = "list")]
fn list(args: ListArgs) {}

// EXEC
// ----------------------------------------------------------------------------------------

#[update(name = "get_exec_public")]
fn get_exec_public(args: GetExecArgs) -> Option<Vec<DataModule>> {
    let nft_data = nft_data_get(args.id.into());

    nft_data.map(|nft_data| {
        let modules_ids = nft_data.get_public_modules();
        let data_modules = get_data_modules(modules_ids);

        data_modules
    })
}

#[update(name = "get_exec")]
fn get_exec(args: GetExecArgs) {}

#[update(name = "exec")]
fn exec(args: ExecArgs) -> Option<Vec<u8>> {
    let owner = ic_cdk::caller();

    let id_owned = NftOwnedId(args.id.into(), owner);

    exec_run(id_owned, args.command)
}

// HELPERS
// ----------------------------------------------------------------------------------------

#[query(name = "ver")]
fn ver() -> u32 {
    26
}

ic_cdk::export_candid!();
