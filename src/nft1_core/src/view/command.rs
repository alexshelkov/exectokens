#[cfg(not(target_arch = "wasm32"))]
use postcard_bindgen::PostcardBindings;

use postcard::{from_bytes, to_allocvec};

// Input

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub enum Input {
    Empty,
    Text(String),
    File(String, String, Vec<u8>),
}

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub enum CommandInput {
    Init,
    Raw(Input),
    Id(u32, Input),
}

impl CommandInput {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for CommandInput {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

// Output

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub enum Block {
    Button,
    Header(String),
    Text(String),
}

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub enum Output {
    Empty,
    Text(String),
    File(String, Vec<u8>),
    Blocks(Vec<Block>),
}

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub enum CommandOutput {
    Empty,
    Init(Vec<CommandDescriptor>),
    Raw(Output),
    Id(u32, Output),
}

impl CommandOutput {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for CommandOutput {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

// Listing

#[cfg_attr(not(target_arch = "wasm32"), derive(PostcardBindings))]
#[derive(Serialize, Deserialize, Debug)]
pub struct CommandDescriptor {
    pub id: u32,
    pub name: String,
    pub desc: String,
}
