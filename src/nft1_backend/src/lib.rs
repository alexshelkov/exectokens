#![allow(clippy::collapsible_else_if)]
#![allow(dead_code, unused_imports, unused_variables)]

#[macro_use]
extern crate ic_cdk_macros;
#[macro_use]
extern crate serde;

mod contents;
mod attrs;
mod canister;
mod engine;
mod nft;
mod program;
mod state;
