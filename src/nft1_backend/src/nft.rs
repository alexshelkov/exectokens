use crate::program::{Module, ModuleDesc, ModuleId, ModuleTag};
use bitflags::{bitflags, parser};
use candid::{types::principal, CandidType, Decode, Encode, Principal};
use ic_stable_structures::{
    storable::{Blob, Bound},
    vec, Storable,
};
use nft1_core::{
    attrs::{Attr, AttrKey, AttrVal},
    contents::{Content, ContentHeader, Contents, ContentsCreate},
    modules::ModuleDescCreate,
};
use std::borrow::Cow;
use std::collections::HashMap;

#[derive(CandidType, Deserialize, Clone)]
pub struct Collection {
    pub name: String,
    pub logo: Option<Content>,
    pub symbol: String,
    pub author: String,
    pub supply_cap: NftSupplyCap,
}

impl Default for Collection {
    fn default() -> Self {
        Self {
            name: String::from(""),
            logo: None,
            symbol: String::from(""),
            author: String::from(""),
            supply_cap: NftSupplyCap::default(),
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

pub type NftIdMajor = u128;
pub type NftIdMinor = u8;
pub type NftIdPatch = u8;
pub type NftMinorSupply = u16; // the size must be NftIdMinor + NftIdPatch

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
pub struct NftSupplyCap(Option<NftIdMajor>, Option<NftMinorSupply>);

impl NftSupplyCap {
    pub fn get_major(&self) -> Option<NftIdMajor> {
        return self.0;
    }

    pub fn get_minor(&self) -> Option<NftMinorSupply> {
        return self.1;
    }

    pub fn is_unlimited(&self) -> bool {
        self.0.is_none() && self.1.is_none()
    }
}

impl Default for NftSupplyCap {
    fn default() -> Self {
        Self(None, None)
    }
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
pub struct NftId(pub NftIdMajor, pub NftIdMinor, pub NftIdPatch);

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
    pub attrs: Vec<Attr>,
    pub contents: Vec<ContentsCreate>,
    pub modules: Vec<ModuleDescCreate>,
}

#[derive(CandidType, Deserialize, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
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

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftAttrs(HashMap<AttrKey, Attr>);

impl NftAttrs {
    pub fn values(self) -> Vec<Attr> {
        self.0.into_values().collect()
    }

    pub fn get_val(self, key: AttrKey) -> Option<AttrVal> {
        self.0.get(&key).map(|attr| attr.val.clone())
    }

    pub fn insert(&mut self, key: AttrKey, attr: Attr) -> bool {
        if key != attr.id {
            return false;
        }

        self.0.insert(key, attr);

        true
    }
}

impl From<Vec<Attr>> for NftAttrs {
    fn from(value: Vec<Attr>) -> Self {
        Self(HashMap::from_iter(
            value.into_iter().map(|attr| (attr.id, attr)),
        ))
    }
}

#[derive(CandidType, Deserialize, Clone)]
pub struct NftData {
    pub id: NftId,
    pub melted: bool,
    pub attrs: NftAttrs,
    pub contents: Vec<u8>,
    pub contents_headers: Vec<ContentHeader>,
    pub modules: Vec<ModuleDesc>,
}

impl NftData {
    pub fn get_all_modules(&self) -> Vec<ModuleId> {
        Self::get_modules(&self, ModuleTag::empty())
    }

    pub fn get_public_modules(&self) -> Vec<ModuleId> {
        Self::get_modules(&self, ModuleTag::Public)
    }

    pub fn get_modules(&self, tag: ModuleTag) -> Vec<ModuleId> {
        self.modules
            .clone()
            .into_iter()
            .filter(|module_desc| {
                let module_tag = module_desc.tag;

                if module_tag.is_empty() || tag.is_empty() {
                    return true;
                }

                module_tag.intersects(tag)
            })
            .map(|module_desc| module_desc.into())
            .collect()
    }

    pub fn update_modules(&mut self, modules_ids: Vec<ModuleId>, tag: ModuleTag) {
        let modules: Vec<ModuleDesc> = modules_ids
            .into_iter()
            .map(|module_id| (module_id, tag).into())
            .collect();

        if tag.is_empty() {
            self.modules = modules;
            return;
        }

        let mut updated_modules: Vec<ModuleDesc> = self
            .modules
            .clone()
            .into_iter()
            .filter(|module| !module.tag.intersects(tag))
            .collect();

        updated_modules.extend(modules);

        self.modules = updated_modules;
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
        let modules = nft_data.get_modules(ModuleTag::empty());

        Self {
            id: nft_data.id.into(),
            melted: nft_data.melted,
            executions: nft_execs.executions,
            attrs: nft_data.attrs.values(),
            contents_byte_size: contents_len,
            contents_headers: nft_data.contents_headers,
            contents: nft_data.contents,
            modules: modules,
            memory: nft_memory,
        }
    }
}

// Memory can be read or modified by anyone or just owner
// with the right permissions
#[derive(CandidType, Deserialize, Serialize, Clone, Copy, Debug)]
pub struct NftMemoryTag(u16);

bitflags! {
    impl NftMemoryTag: u16 {
        const Public =  0b00000001;
        const Private = 0b00000010;
    }
}

impl Default for NftMemoryTag {
    fn default() -> Self {
        Self(0b00000001)
    }
}

impl NftMemoryTag {
    pub fn is_show_updated(self) -> bool {
        self.intersects(NftMemoryTag::Public)
    }
}

pub type NftMemoryKey = u8;
pub type NftMemoryVal = (NftMemoryTag, Vec<u8>);

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct NftMemory(HashMap<NftMemoryKey, NftMemoryVal>);

impl NftMemory {
    pub fn insert(&mut self, key: NftMemoryKey, data: Vec<u8>) {
        let tag = self
            .0
            .get(&key)
            .map(|(tag, _)| *tag)
            .unwrap_or(NftMemoryTag::default());

        self.0.insert(key, (tag, data));
    }

    pub fn read_tag(&self, key: NftMemoryKey) -> NftMemoryTag {
        self.0
            .get(&key)
            .map(|(tags, _)| *tags)
            .unwrap_or(NftMemoryTag::default())
    }

    pub fn read(&self, key: NftMemoryKey) -> Vec<u8> {
        self.0
            .get(&key)
            .map(|(_, vec)| vec.to_vec())
            .unwrap_or(vec![])
    }

    pub fn keys(&self) -> Vec<NftMemoryKey> {
        self.0.keys().copied().collect()
    }
}

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

#[derive(CandidType, Deserialize, Serialize, Clone, Copy, Debug)]
pub struct NftPermissions(u16);

bitflags! {
    impl NftPermissions: u16 {
        const All =  0b00000000;
    }
}

#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct NftOwner {
    pub owner: Principal,
    pub permissions: NftPermissions,
}

impl NftOwner {
    pub fn create(owner: Principal) -> Self {
        Self {
            owner,
            permissions: NftPermissions::All,
        }
    }
}

// Single NFT may be "owned" by multiple principals
// Each participant may have different rights to the NFT
#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct NftOwners(pub Vec<NftOwner>);

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

#[derive(CandidType, Deserialize, Serialize, Debug, Clone)]
pub enum NftUpdate {
    Attr(Attr),
    Melt(bool),
    Memory(u8, Option<Vec<u8>>),
}

#[derive(CandidType, Deserialize, Serialize, Debug)]
pub struct NftExec(pub Vec<u8>, pub Vec<NftUpdate>);

#[derive(CandidType, Deserialize, Serialize, Debug)]
pub enum NftExecErr {
    NftDataNotFound,
    ModuleNotFound,
}
