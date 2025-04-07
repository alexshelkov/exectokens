use nft1_core::{
    mint::{MintParams, MintResult},
    program::{self, ProgramCreate, ProgramCreateResult},
};
use program_alpha_protocol::{In, Out};

// NFT PROPS ACCESS
// ========================================================================

// Mint
// -------------------------------------------------

#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_mint_exec(len: i32) -> i32;
    fn smart_nft_mint(len: i32) -> i32;
}

static mut MINT_EXEC: [u8; 512 * 1000 * 1000] = [0; 512 * 1000 * 1000];

#[no_mangle]
pub extern "C" fn smart_nft_mint_exec_buffer() -> *const u8 {
    unsafe { MINT_EXEC.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_mint_exec_buffer_free() {}

static mut MINT: [u8; 32 * 1000 * 1000] = [0; 32 * 1000 * 1000];

#[no_mangle]
pub extern "C" fn smart_nft_mint_buffer() -> *const u8 {
    unsafe { MINT.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_mint_buffer_free() {}

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

static mut DATA: [u8; 512 * 1000 * 1000] = [0; 512 * 1000 * 1000];

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
            In::MintExec(program) => {
                let program: Vec<_> = program.into();
                let len = program.len();

                let len = unsafe {
                    MINT_EXEC[..len].copy_from_slice(&program);
                    smart_nft_mint_exec(len as i32) as usize
                };

                let result = unsafe { MINT_EXEC[..len].to_vec() };
                let result = ProgramCreateResult::from_buf(&result);

                if result.is_none() {
                    out = Out::MintExecInvalid;
                } else {
                    let result = result.unwrap();
                    out = Out::MintExec(result);
                }
            }
            In::MintNft(args) => {
                let args: Vec<_> = args.into();
                let len = args.len();

                let len = unsafe {
                    MINT[..len].copy_from_slice(&args);
                    smart_nft_mint(len as i32) as usize
                };

                let result = unsafe { MINT[..len].to_vec() };
                let result = MintResult::from_buf(&result);

                if result.is_none() {
                    out = Out::MintExecInvalid;
                } else {
                    let result = result.unwrap();
                    out = Out::Mint(result);
                }
            }
        }
    }

    unsafe {
        let out = out.to_buf();

        DATA[..out.len()].copy_from_slice(out.as_slice());

        out.len()
    }
}
