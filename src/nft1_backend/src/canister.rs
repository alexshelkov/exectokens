use crate::{
    attrs::Attr,
    headers::ContentHeader,
    nft::Nft,
    program::{DataModule, Export, Module, ModuleId},
    state::{
        create_nft, exec_run, get_data_modules, get_limits, get_limits_collection,
        get_module_by_export, get_module_code, get_nft_data, get_nft_memory, list_nfts, nft_get_id,
        nft_inc_id, update_collection, update_modules, with_collection, CollectionState,
        ExecLimits, NftData, NftDataCreate, COLLECTION, MODULES, MODULES_DATA, NFTS_DATA,
        NFT_LAST_ID,
    },
};
use candid::{CandidType, Encode, Principal};
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
    pub executions: Option<u64>,
    pub refils: Option<u64>,
    pub program: String,
}

#[derive(CandidType, Deserialize)]
pub struct MintExecArgs {
    pub program: String,
}

#[derive(CandidType, Deserialize)]
pub struct MintArgs {
    pub owner: Principal,
    pub accuires: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Option<Vec<ModuleId>>,
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

    update_collection(CollectionState {
        name: args.name,
        logo: args.logo,
        symbol: args.symbol,
        author: args.author,
        executions: args.executions,
        refils: args.refils,
    });
}

// MINT
// ----------------------------------------------------------------------------------------

#[update(name = "mint_exec")]
fn mint_exec(args: MintExecArgs) -> u64 {
    let program: ProgramRaw = serde_json::from_str(&args.program).expect("failed to parse code");

    update_modules(program.get_modules())
}

#[update(name = "mint")]
fn mint(args: MintArgs) -> u128 {
    let id: u128 = nft_inc_id();

    let limits = get_limits(get_limits_collection());

    create_nft(
        id.into(),
        NftData::new(NftDataCreate {
            id: id.into(),
            owner: args.owner,
            accuires: args.accuires,
            refils: limits.refils,
            executions: limits.executions,
            attrs: args.attrs,
            contents_headers: args.contents_headers,
            contents: args.contents,
            modules: args.modules,
            modules_hidden: args.modules_hidden,
        }),
    );

    id
}

#[update(name = "mint_stream")]
fn mint_stream(args: MintStreamArgs) {}

// ACQUIRE
// ----------------------------------------------------------------------------------------

#[update(name = "accuire")]
fn acquire(args: AcquireArgs) -> Option<()> {
    let nft_data = get_nft_data(args.id.into());

    if nft_data.is_none() {
        return None;
    }

    None
}

// MEMORY
// ----------------------------------------------------------------------------------------

// GET and LIST
// ----------------------------------------------------------------------------------------

#[query(name = "last_id")]
fn last_id() -> u128 {
    nft_get_id()
}

#[query(name = "collection_attrs")]
fn collection_attrs() -> CollectionState {
    with_collection(|collection| collection.clone())
}

#[update(name = "get_public")]
fn get_public(args: GetArgs) -> Option<Nft> {
    let nft_data = get_nft_data(args.id.into());
    let nft_mem = get_nft_memory(args.id.into());

    if nft_data.is_none() || nft_mem.is_none() {
        return None;
    }

    Some((nft_data.unwrap(), nft_mem.unwrap()).into())
}

#[update(name = "get")]
fn get(args: GetArgs) {}

#[update(name = "list_public")]
fn list_public(args: ListArgs) -> Vec<Nft> {
    list_nfts(args.owner)
        .into_iter()
        .map(|(nft_data, nft_mem)| (nft_data, nft_mem).into())
        .collect()
}

#[update(name = "list")]
fn list(args: ListArgs) {}

// EXEC
// ----------------------------------------------------------------------------------------

#[update(name = "get_exec_public")]
fn get_exec_public(args: GetExecArgs) -> Option<Vec<DataModule>> {
    let nft_data = get_nft_data(args.id.into());

    nft_data.map(|nft_data| {
        let data_modules = get_data_modules(nft_data.modules);

        data_modules
    })
}

#[update(name = "get_exec")]
fn get_exec(args: GetExecArgs) {}

#[update(name = "get_exec_public_stream")]
fn get_exec_public_stream(args: GetExecArgs) {}

#[update(name = "exec")]
fn exec(args: ExecArgs) -> Option<Vec<u8>> {
    exec_run(args.id.into(), args.command)
}

// HELPERS
// ----------------------------------------------------------------------------------------

#[query(name = "ver")]
fn ver() -> u32 {
    10
}

ic_cdk::export_candid!();
