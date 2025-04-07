use humansize::{format_size, DECIMAL};

use nft1_core::view::command::*;

// VIEW
// ------------------------------------------------------------------------

static mut COMMAND_DATA: [u8; 1024 * 1024 * 1024] = [0; 1024 * 1024 * 1024];

#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_view_command_ret(len: usize);
}

#[no_mangle]
pub extern "C" fn smart_nft_view_command_buffer() -> *const u8 {
    unsafe { COMMAND_DATA.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_view_command_buffer_free() {}

#[no_mangle]
pub extern "C" fn smart_nft_view_command(len: usize) {
    let command_list = vec![
        CommandDescriptor {
            id: 0,
            name: "hello".to_string(),
            desc: "Say hello".to_string(),
        },
        CommandDescriptor {
            id: 1,
            name: "file".to_string(),
            desc: "Upload test file".to_string(),
        },
    ];

    let input = unsafe { CommandInput::from_buf(&COMMAND_DATA[..len]) };

    let mut out = CommandOutput::Empty;

    if input.is_some() {
        let input = input.unwrap();

        match input {
            CommandInput::Init => {
                out = CommandOutput::Init(command_list);
            }
            CommandInput::Raw(input) => match input {
                Input::Text(text) => {
                    out = CommandOutput::Raw(Output::Text(text));
                }
                _ => {}
            },
            CommandInput::Id(id, input) => match id {
                0 => {
                    out = CommandOutput::Id(id, Output::Text("Hi from view!".to_string()));
                }
                1 => {
                    if let Input::File(_, mime, data) = input {
                        out = CommandOutput::Id(
                            id,
                            Output::Text(format!(
                                "Uploaded file mime: {} and size: {}",
                                mime,
                                format_size(data.len(), DECIMAL)
                            )),
                        );
                    }
                }
                _ => {}
            },
        }
    }

    unsafe {
        let out: Vec<_> = out.into();
        COMMAND_DATA[..out.len()].copy_from_slice(out.as_slice());
        smart_nft_view_command_ret(out.len());
    }
}
