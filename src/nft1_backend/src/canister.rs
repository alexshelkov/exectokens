use crate::{
    nft::{
        Collection, Nft, NftCreate, NftData, NftExec, NftExecErr, NftExecs, NftMemory, NftOwnedId,
        NftSupplyCap,
    },
    program::{DataModule, Export, Module, ModuleDesc, ModuleId},
    state::{
        create_nft, exec_run, get_data_modules, get_module_code, list_modules, list_nfts,
        nft_data_get, nft_get, nft_get_id, nft_inc_id, nft_memory_get, parse_program,
        update_collection, update_modules, with_collection, COLLECTION, MODULES, MODULES_DATA,
        NFTS_DATA, NFT_LAST_ID,
    },
};
use candid::{CandidType, Encode, Principal};
use nft1_core::{
    attrs::{Attr, AttrVal},
    contents::{Content, ContentsCreate},
    mint::{MintError, MintExecParams, MintExecResult, MintParams, MintResult},
    modules::ModuleDescCreate,
    view::command::{CommandInput, CommandOutput},
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
    pub supply_cap: Option<NftSupplyCap>,
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

// INIT
// ----------------------------------------------------------------------------------------

#[init]
fn init(args: InitArgs) {
    update_collection(Collection {
        name: args.name,
        logo: Content::create_logo(args.logo),
        symbol: args.symbol,
        author: args.author,
        supply_cap: args.supply_cap.unwrap_or(NftSupplyCap::default()),
    });
}

// MINT
// ----------------------------------------------------------------------------------------

#[update(name = "mint_exec")]
fn mint_exec(args: MintExecParams) -> MintExecResult {
    MintExecResult::Ok(update_modules(parse_program(args.program)))
}

#[update(name = "mint")]
fn mint(args: MintParams) -> MintResult {
    let owner = Principal::from_text(args.owner);

    if owner.is_err() {
        return MintResult::Err(MintError::InvalidPrincipal);
    }

    let nft_data_create = NftCreate {
        owner: owner.unwrap(),
        executions: args.executions,
        melted: args.melted.unwrap_or(true),
        attrs: args.attrs,
        contents: args.contents,
        modules: args.modules,
    };

    create_nft(nft_data_create)
        .map(|id| MintResult::Ok(id.into()))
        .unwrap_or(MintResult::Err(MintError::NftCreateError))
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

#[query(name = "list_programs")]
fn list_programs() -> Vec<Module> {
    list_modules()
}

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
fn exec(args: ExecArgs) -> Result<NftExec, NftExecErr> {
    let owner = ic_cdk::caller();

    let id_owned = NftOwnedId(args.id.into(), owner);

    // TODO: dbg
    if args.command.len() > 30 {
        ic_cdk::println!("exec len: {:?}", args.command.len());
    } else {
        ic_cdk::println!("exec: {:?}", args.command);
    };

    exec_run(id_owned, args.command)
}

// HELPERS
// ----------------------------------------------------------------------------------------

#[query(name = "ver")]
fn ver() -> u32 {
    26
}

ic_cdk::export_candid!();
