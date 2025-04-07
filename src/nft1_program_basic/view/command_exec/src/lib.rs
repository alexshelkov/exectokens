use nft1_core::view::command::*;
use program_basic_protocol::{In, Out};

const SIZE: usize = 512 * 1024 * 1024;

// VIEW
// ------------------------------------------------------------------------

static mut COMMAND_DATA: [u8; SIZE] = [0; SIZE];

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
            name: "memkey".to_string(),
            desc: "Get the memory keys".to_string(),
        },
        CommandDescriptor {
            id: 1,
            name: "memset".to_string(),
            desc: "Set the memory [key] [val1,val2]".to_string(),
        },
        CommandDescriptor {
            id: 2,
            name: "memget".to_string(),
            desc: "Get the memory [key]".to_string(),
        },
    ];

    let input = unsafe { CommandInput::from_buf(&COMMAND_DATA[..len]) };

    let mut in_exec: Option<In> = None;
    let mut out_cmd = CommandOutput::Empty;

    if let Some(input) = input {
        match input {
            CommandInput::Init => {
                out_cmd = CommandOutput::Init(command_list);
            }
            CommandInput::Raw(input) => match input {
                Input::Text(text) => {
                    out_cmd = CommandOutput::Raw(Output::Text(text));
                }
                _ => {}
            },
            CommandInput::Id(id, input) => {
                if id == command_list[0].id {
                    in_exec = Some(In::MemKeys)
                }
                if id == command_list[1].id {
                    match input {
                        Input::Text(text) => {
                            let parts: Vec<_> = text.split(' ').collect();

                            if parts.len() == 3 {
                                let key = parts[1].trim().parse().unwrap_or(0);

                                let val: Vec<_> = parts[2]
                                    .split(',')
                                    .map(|x| x.trim().parse().unwrap_or(0))
                                    .collect();

                                in_exec = Some(In::SetMem(key, val));
                            }
                        }
                        _ => {}
                    };
                } else if id == command_list[2].id {
                    match input {
                        Input::Text(text) => {
                            let parts: Vec<_> = text.split(' ').collect();

                            if parts.len() == 2 {
                                let key = parts[1].trim().parse().unwrap_or(0);

                                in_exec = Some(In::GetMem(key));
                            }
                        }
                        _ => {}
                    }
                }
            }
        }
    }

    unsafe {
        if let Some(in_exec) = in_exec {
            let in_exec = in_exec.to_buf();
            EXEC_DATA[..in_exec.len()].copy_from_slice(in_exec.as_slice());
            smart_nft_exec(in_exec.len());
            return;
        } else {
            let out_cmd: Vec<_> = out_cmd.into();
            COMMAND_DATA[..out_cmd.len()].copy_from_slice(out_cmd.as_slice());
            smart_nft_view_command_ret(out_cmd.len());
        }
    }
}

// EXEC
// ------------------------------------------------------------------------

static mut EXEC_DATA: [u8; SIZE] = [0; SIZE];

#[link(wasm_import_module = "smart_nft")]
extern "C" {
    fn smart_nft_exec(len: usize);
}

#[no_mangle]
pub extern "C" fn smart_nft_exec_ret(len: usize) {
    let input = Out::from_buf(unsafe { &EXEC_DATA[..len] });

    let mut out = CommandOutput::Empty;

    if input.is_some() {
        let input = input.unwrap();

        match &input {
            Out::GetKeys(keys) => {
                out = CommandOutput::Id(0, Output::Text(format!("Memory keys: {:?}", keys)));
            }
            Out::SetMem => {
                out = CommandOutput::Id(1, Output::Text(format!("Memory set")));
            }
            Out::GetMem(mem) => {
                out = CommandOutput::Id(2, Output::Text(format!("Memory: {:?}", mem)));
            }
            _ => {}
        }
    }

    unsafe {
        let out_cmd: Vec<_> = out.into();
        COMMAND_DATA[..out_cmd.len()].copy_from_slice(out_cmd.as_slice());
        smart_nft_view_command_ret(out_cmd.len());
    }
}

#[no_mangle]
pub extern "C" fn smart_nft_exec_buffer() -> *const u8 {
    unsafe { EXEC_DATA.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_exec_buffer_free() {}
