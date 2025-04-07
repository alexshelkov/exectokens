#[macro_use]
extern crate serde;
use postcard::{from_bytes, to_allocvec};

use nft1_core::{
    mint::{MintParams, MintResult},
    program::{ProgramCreate, ProgramCreateResult},
};

#[derive(Serialize, Deserialize, Debug)]
pub enum In {
    MintExec(ProgramCreate),
    MintNft(MintParams),
}

impl In {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(value).ok()
    }

    pub fn to_buf(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

#[derive(Serialize, Deserialize, Debug)]
pub enum Out {
    MintExecInvalid,
    MintExec(ProgramCreateResult),
    MintInvalid,
    Mint(MintResult),
    InvalidInput,
}

impl Out {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(value).ok()
    }

    pub fn to_buf(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}