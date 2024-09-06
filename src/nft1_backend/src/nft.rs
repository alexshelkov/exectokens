use crate::{
    attrs::Attr,
    headers::ContentHeader,
    program::{Module, ModuleId},
    state::{NftData, NftMemory},
};

use candid::{CandidType, Encode, Principal};

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Nft {
    pub id: u128,
    pub executions: Option<u128>,
    pub refils: Option<u128>,
    pub accuires: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents_byte_size: u64,
    pub contents_headers: Vec<ContentHeader>,
    pub contents: Vec<u8>,
    pub modules: Vec<ModuleId>,
    pub memory: NftMemory,
}

impl From<(NftData, NftMemory)> for Nft {
    fn from((nft_data, nft_memory): (NftData, NftMemory)) -> Self {
        let contents_len = u64::try_from(nft_data.contents.len()).unwrap();

        Self {
            id: nft_data.id.into(),
            executions: None,
            refils: None,
            accuires: None,
            attrs: nft_data.attrs,
            contents_byte_size: contents_len,
            contents_headers: nft_data.contents_headers,
            contents: nft_data.contents,
            modules: nft_data.modules,
            memory: nft_memory,
        }
    }
}
