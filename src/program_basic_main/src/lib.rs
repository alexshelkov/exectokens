use wasm_bindgen::prelude::*;

pub enum ContentRole {
    A
}

pub struct ContentHeader {
    // pub role: ContentRole,
    pub start: u32,
    pub end: u32,
    // pub mime: String,
}

#[wasm_bindgen]
extern "C" {
    // #[wasm_bindgen]
    // fn smart_nft_attrs_get() -> Vec<u8>;

    // #[wasm_bindgen]
    // fn smart_nft_contents_get() -> Vec<u8>;

    // Attrs
    // -------------------------------------------------

    // #[wasm_bindgen]
    // fn smart_nft_attrs_keys() -> Vec<String>;

    #[wasm_bindgen]
    fn smart_nft_attr_get(key: String) -> Vec<u8>;

    // #[wasm_bindgen]
    // fn smart_nft_attrs_keys(key: String) -> Vec<u8>;

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
    // let mem = smart_nft_memory_get(1);

    smart_nft_attr_set("attr_xxx".into(), vec![1, 6, 5, 91, 7]);

    smart_nft_attr_get("attr_yyy".into());

    // smart_nft_attrs_keys("must return this test".into())

    command

    // let keys = smart_nft_attrs_keys();

    // let mut res = vec![];

    // for key in keys {
    //     res.extend(key.into_bytes());
    // }

    // res
    
    
    // smart_nft_attr_get("1".into());

    // smart_nft_attr_set("1".into(), vec![2]);

    // if (smart_nft_memory_set(1, vec![1])) {
    //     vec![121, 101, 115]
    // } else {
    //     vec![110, 111]
    // }

    

    // smart_nft_memory_set(2, vec![1, 2, 3]);

    // let keys = smart_nft_memory_keys();

    // smart_nft_memory_set(3, keys);

    // let copy = smart_nft_memory_get(1);

    // smart_nft_memory_set(4, copy);

    // command
}
