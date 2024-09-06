use crate::{attrs::Attr, headers::ContentHeader};
use candid::{CandidType, Decode, Encode, Principal};
use ic_stable_structures::{
    storable::{Blob, Bound},
    Storable,
};
use std::fmt;
use std::{borrow::Cow, cell::RefCell};

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq, Default)]
pub enum ViewEngine {
    #[default]
    Empty,
    Canvas,
    Command,
}

impl From<&str> for ViewEngine {
    fn from(value: &str) -> Self {
        match value {
            EXPORT_VIEW => Self::Empty,
            EXPORT_VIEW_CANVAS => Self::Canvas,
            EXPORT_VIEW_COMMAND => Self::Command,
            _ => panic!("Unreachable"),
        }
    }
}

impl fmt::Display for ViewEngine {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let name = match &self {
            Self::Empty => "Empty",
            Self::Canvas => "Canvas",
            Self::Command => "Command",
        };

        write!(f, "{}", name)
    }
}

const EXPORT_MAIN: &str = "smart_nft_main";
const EXPORT_VIEW: &str = "smart_nft_view";
const EXPORT_VIEW_CANVAS: &str = "smart_nft_view_canvas";
const EXPORT_VIEW_COMMAND: &str = "smart_nft_view_command";
const EXPORT_LIMITS: &str = "smart_nft_limits";

#[derive(CandidType, Serialize, Deserialize, Clone, Debug, PartialEq)]
pub enum Export {
    Main,
    View(ViewEngine),
    Limits,
    User(String),
}

impl From<&str> for Export {
    fn from(value: &str) -> Self {
        match value {
            EXPORT_MAIN => Self::Main,
            EXPORT_VIEW | EXPORT_VIEW_CANVAS | EXPORT_VIEW_COMMAND => {
                Self::View(ViewEngine::from(value))
            }
            EXPORT_LIMITS => Self::Limits,
            _ => Self::User(value.to_owned()),
        }
    }
}

impl Into<String> for Export {
    fn into(self) -> String {
        match self {
            Self::Main => EXPORT_MAIN.to_owned(),
            Self::View(view) => format!("View({})", view),
            Self::Limits => EXPORT_LIMITS.to_owned(),
            Self::User(name) => format!("User({})", name),
        }
    }
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct ModuleUses {
    attrs: Option<String>,
}

#[derive(
    CandidType, Deserialize, Serialize, Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord,
)]
pub struct ModuleId(pub u64);

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct Module {
    pub id: ModuleId,
    pub name: String,
    pub exports: Vec<Export>,
    pub uses: Option<ModuleUses>,
}

impl Module {
    pub fn new(id: u64, name: String, exports: Vec<Export>) -> Self {
        Self {
            id: ModuleId(id),
            name: name,
            exports: exports,
            uses: None,
        }
    }
}

impl Storable for Module {
    fn to_bytes(&self) -> std::borrow::Cow<[u8]> {
        Cow::Owned(Encode!(self).unwrap())
    }

    fn from_bytes(bytes: std::borrow::Cow<[u8]>) -> Self {
        Decode!(bytes.as_ref(), Self).unwrap()
    }

    const BOUND: Bound = Bound::Unbounded;
}

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct DataModule(pub Module, pub Vec<u8>);
