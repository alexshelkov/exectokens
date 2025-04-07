#[cfg(not(target_arch = "wasm32"))]
use postcard_bindgen::PostcardBindings;

use candid::CandidType;
use postcard::{from_bytes, to_allocvec};

pub type AttrKey = u32;

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub enum AttrVal {
    Bool(bool),
    Num(i32),
    Principal(String),
    Text(String),
    Time(String),
    Date(String),
    DateTime(String),
    RGBA(u8, u8, u8, u8),
}

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Attr {
    pub id: AttrKey,
    pub name: String,
    pub val: AttrVal,
}

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Attrs(pub Vec<Attr>);

impl Attrs {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for Attrs {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

