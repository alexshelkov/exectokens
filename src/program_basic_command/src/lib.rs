use js_sys::{Promise, Uint8Array};
use wasm_bindgen::prelude::*;
use wasm_bindgen_futures::JsFuture;

#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_name = "smart_nft_main_run")]
    fn smart_nft_main_run_async(command: Vec<u8>) -> Promise;
}

#[wasm_bindgen(js_name = "smart_nft_view_command")]
pub async fn smart_nft_view_command(command: Vec<u8>) -> Vec<u8> {
    let promise = smart_nft_main_run_async(command);

    let future = JsFuture::from(promise).await.unwrap();

    let y = Uint8Array::new(&future).to_vec();

    y
}
