use candid::{CandidType, Decode, Encode, Principal};
use std::time::{SystemTime, UNIX_EPOCH};

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub enum AttrVal {
    Bool(bool),
    Text(String),
    Principal(Principal),
    Num(i32),
    Date(String),
    Time(SystemTime),
    DateTime(String),
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Attr {
    pub name: String,
    pub val: AttrVal,
}
