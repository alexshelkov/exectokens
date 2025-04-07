use program_basic_protocol::{In, Out};

// NFT PROPS ACCESS
// ========================================================================

// Melt
// -------------------------------------------------
#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_melt_get() -> i32;
    fn smart_nft_melt_set();
}

// Memory
// -------------------------------------------------
static mut MEM: [u8; 1000] = [0; 1000];
static mut MEM_KEYS: [u8; 1000] = [0; 1000];

#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_memory_keys() -> i32;
    fn smart_nft_memory_get(key: i16) -> i32;
    fn smart_nft_memory_set(key: i16, len: i32);
}

#[no_mangle]
pub extern "C" fn smart_nft_memory_buffer(key: i16) -> *const u8 {
    unsafe { MEM.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_memory_buffer_free(key: i16) {}

#[no_mangle]
pub extern "C" fn smart_nft_memory_keys_buffer() -> *const u8 {
    unsafe { MEM_KEYS.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_memory_keys_buffer_free() {}

// Attr
// -------------------------------------------------
static mut ATTR: [u8; 1000] = [0; 1000];

#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_attr_get(key: i64) -> i32;
    fn smart_nft_attr_set(key: i64, len: i32);
}

#[no_mangle]
pub extern "C" fn smart_nft_attr_buffer(key: i64) -> *const u8 {
    unsafe { ATTR.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_attr_buffer_free(key: i64) {}

// NFT VIEW
// ========================================================================

// Command view
// -------------------------------------------------

static mut DATA: [u8; 1000] = [0; 1000];

#[no_mangle]
pub extern "C" fn smart_nft_main_buffer() -> *const u8 {
    unsafe { DATA.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_main_buffer_free() {}

#[no_mangle]
pub extern "C" fn smart_nft_main(len: usize) -> usize {
    let input = In::from_buf(unsafe { &DATA[..len] });

    let mut out = Out::InvalidInput;

    if let Some(input) = input {
        match input {
            In::GetMelt => {
                out = Out::GetMelt(unsafe { smart_nft_melt_get() as u8 });
            }
            In::SetMelt(melt) => {
                if melt {
                    unsafe {
                        smart_nft_melt_set();
                    }
                }

                out = Out::SetMelt;
            }
            In::MemKeys => {
                let len = unsafe { smart_nft_memory_keys() };

                out = Out::GetKeys(unsafe { MEM_KEYS[..len as usize].to_vec() });
            }
            In::GetMem(key) => {
                let len = unsafe { smart_nft_memory_get(key as i16) };

                out = Out::GetMem(unsafe { MEM[..len as usize].to_vec() });
            }
            In::SetMem(key, data) => {
                unsafe {
                    let len = data.len();

                    MEM[..len].copy_from_slice(&data);

                    smart_nft_memory_set(key as i16, len as i32);
                };

                out = Out::SetMem;
            }
        }
    }

    unsafe {
        let out = out.to_buf();

        DATA[..out.len()].copy_from_slice(out.as_slice());

        out.len()
    }
}
