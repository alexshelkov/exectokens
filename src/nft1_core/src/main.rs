#[macro_use]
extern crate serde;
#[macro_use]
extern crate postcard_bindgen;

use std::{fs, path::PathBuf};

use postcard_bindgen::{
    javascript::{build_package, GenerationSettings},
    PackageInfo,
};

mod attrs;
use attrs::*;
mod view;
use view::command::*;

fn main() {
    println!("Starting generate of JS bindings...");

    let mut bindings_path: PathBuf = env!("CARGO_MANIFEST_DIR").into();
    bindings_path.push("../nft1_front/src/nft/bindings");

    if let Err(err) = fs::canonicalize(bindings_path.clone()) {
        println!("Bindings path error: {:?}", err);
        return;
    }

    let views_package = PackageInfo {
        name: "core".into(),
        version: "0.1.0".try_into().unwrap(),
    };

    if let Err(err) = build_package(
        bindings_path.as_path(),
        views_package,
        GenerationSettings::default()
            .serialization(true)
            .module_structure(false)
            .esm_module(true)
            .type_script_types(true),
        generate_bindings!(
            Attr,
            AttrVal,
            Attrs,
            Input,
            Output,
            Block,
            CommandInput,
            CommandOutput,
            CommandDescriptor
        ),
    ) {
        println!("Views package error: {:?}", err);
    } else {
        println!("Views build success");
    }
}
