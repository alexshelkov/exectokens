// use mime::Mime; // TODO: fix this

use candid::{CandidType, Encode, Principal};

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub(crate) struct ContentChanges {
    pub changed_at: u128,
    pub expires: u128,
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub enum ContentType {
    ApplicationWasm,
    ImagePng,
    ImageSvg,
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub enum ContentName {
    Main,
    Preview,
    View,
    Module(String),
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub enum ContentSource {
    Local,
    Blockchain,
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub struct ContentHeader {
    pub thetype: ContentType,
    pub name: ContentName,
    pub start: u128,
    pub end: u128,
    pub size: u128,
    pub changes: Option<ContentChanges>,
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub struct Content {
    pub header: ContentHeader,
    pub parts: Vec<u8>,
    pub next: Option<u128>,
}

pub type Contents = Vec<Content>;

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub struct Nft {
    pub id: String,
    pub executions: Option<u128>,
    pub refils: Option<u128>,
    pub meta: Option<Vec<u8>>,
    pub content: Contents,
}

#[derive(Debug, Clone, PartialEq, Eq, CandidType, Deserialize)]
pub struct Collection {
    pub name: String,
    pub logo: String,
    pub symbol: String,

    pub executions: Option<u128>,
    pub refils: Option<u128>,

    pub content: Contents,

    pub nfts: Vec<Nft>,
}

fn _t() {
    // let _x: ContentName = ContentName::Test;
}
