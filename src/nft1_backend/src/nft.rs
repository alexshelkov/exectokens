use crate::{
    attrs::Attr,
    contents::{ContentHeader, Contents, ContentsCreate},
    program::{Module, ModuleId},
};
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::{
    storable::{Blob, Bound},
    Storable,
};
use std::borrow::Cow;
use std::collections::HashMap;

#[derive(CandidType, Deserialize, Clone)]
pub struct Collection {
    pub name: String,
    pub logo: Option<Contents>,
    pub symbol: String,
    pub author: String,
}

impl Default for Collection {
    fn default() -> Self {
        Self {
            name: String::from(""),
            logo: None,
            symbol: String::from(""),
            author: String::from(""),
        }
    }
}

impl Storable for Collection {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
pub struct NftId(pub u128, pub u8, pub u8);

impl From<u128> for NftId {
    fn from(value: u128) -> Self {
        Self(value, 0, 0)
    }
}

impl Into<u128> for NftId {
    fn into(self) -> u128 {
        self.0
    }
}

impl Storable for NftId {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Bounded {
        max_size: size_of::<NftId>() as u32,
        is_fixed_size: false,
    };
}

pub struct NftCreate {
    pub owner: Principal,
    pub melted: bool,
    pub executions: Option<u64>,
    pub refills: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents: Vec<ContentsCreate>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Option<Vec<ModuleId>>,
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct NftOwnedId(pub NftId, pub Principal);

impl Storable for NftOwnedId {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Bounded {
        max_size: size_of::<NftOwnedId>() as u32,
        is_fixed_size: false,
    };
}

#[derive(CandidType, Deserialize, Clone)]
pub struct NftData {
    pub id: NftId,
    pub melted: bool,
    pub attrs: Vec<Attr>,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleId>,
    pub modules_hidden: Vec<ModuleId>,
}

impl NftData {
    pub fn get_all_modules(&self) -> Vec<ModuleId> {
        [self.modules.clone(), self.modules_hidden.clone()].concat()
    }
}

impl Storable for NftData {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Nft {
    pub id: u128,
    pub melted: bool,
    pub executions: Option<u64>,
    pub refills: Option<u64>,
    pub attrs: Vec<Attr>,
    pub contents_byte_size: u64,
    pub contents_headers: Vec<ContentHeader>,
    pub contents: Vec<u8>,
    pub modules: Vec<ModuleId>,
    pub memory: NftMemory,
}

impl From<(NftData, NftExecs, NftMemory)> for Nft {
    fn from((nft_data, nft_execs, nft_memory): (NftData, NftExecs, NftMemory)) -> Self {
        let contents_len = u64::try_from(nft_data.contents.len()).unwrap();

        Self {
            id: nft_data.id.into(),
            melted: nft_data.melted,
            executions: nft_execs.executions,
            refills: nft_execs.refills,
            attrs: nft_data.attrs,
            contents_byte_size: contents_len,
            contents_headers: nft_data.contents_headers,
            contents: nft_data.contents,
            modules: nft_data.modules,
            memory: nft_memory,
        }
    }
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftMemory(pub HashMap<u8, Vec<u8>>);

impl Default for NftMemory {
    fn default() -> Self {
        NftMemory(HashMap::default())
    }
}

impl Storable for NftMemory {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct OwnerNfts(pub Vec<NftId>);

impl Storable for OwnerNfts {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct NftOwners(pub Vec<Principal>);

impl Storable for NftOwners {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftExecs {
    pub refills: Option<u64>,
    pub executions: Option<u64>,
}

impl Storable for NftExecs {
    fn to_bytes(&self) -> Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}
