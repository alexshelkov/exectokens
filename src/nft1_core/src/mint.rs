use candid::CandidType;
use postcard::{from_bytes, to_allocvec};

use crate::{
    attrs::Attr, contents::ContentsCreate, modules::ModuleDescCreate, program::ProgramCreate,
};

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub struct MintExecParams {
    pub program: ProgramCreate,
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum MintExecResult {
    Ok(u32),
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub struct MintParams {
    pub owner: String,
    pub executions: Option<u64>,
    pub melted: Option<bool>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<ContentsCreate>,
    pub modules: Vec<ModuleDescCreate>,
}

impl MintParams {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for MintParams {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum MintError {
    InvalidParams,
    InvalidPrincipal,
    NftCreateError,
    NftSupplyCapReached,
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum MintResult {
    Ok(u128),
    Err(MintError),
}

impl MintResult {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for MintResult {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}