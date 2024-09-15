use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    // Melt

    #[wasm_bindgen]
    fn get_strings() -> Vec<String>;

    #[wasm_bindgen]
    fn smart_nft_melt_get() -> bool;

    #[wasm_bindgen]
    fn smart_nft_melt();

    // Attrs
    // -------------------------------------------------

    #[wasm_bindgen]
    fn smart_nft_attr_get(key: String) -> Vec<u8>;

    #[wasm_bindgen]
    fn smart_nft_attr_set(key: String, data: Vec<u8>) -> bool;

    // Mem
    // -------------------------------------------------

    #[wasm_bindgen]
    fn smart_nft_memory_keys() -> Vec<u8>;

    #[wasm_bindgen]
    fn smart_nft_memory_set(key: u8, memory: Vec<u8>) -> bool;

    #[wasm_bindgen]
    fn smart_nft_memory_get(key: u8) -> Vec<u8>;

    // Contents
    // -------------------------------------------------

    #[wasm_bindgen]
    fn smart_nft_contents_get(key: u8) -> Vec<u8>;

    #[wasm_bindgen]
    fn smart_nft_headers_get(key: u8) -> Vec<u8>;
}

#[wasm_bindgen]
pub fn smart_nft_main(command: Vec<u8>) -> Vec<u8> {
    smart_nft_melt_get();

    smart_nft_melt();

    smart_nft_attr_set("attr_xxx".into(), vec![1, 6, 5, 91, 7]);

    smart_nft_attr_get("attr_yyy".into());

    // smart_nft_attrs_keys("must return this test".into())

    command
}
