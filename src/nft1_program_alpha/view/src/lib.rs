use base64::prelude::*;

use nft1_core::{
    contents::ContentsCreate,
    mint::MintParams,
    modules::ModuleDescCreate,
    program::{ProgramCreate, ProgramCreateResult},
    view::command::*,
};
use program_alpha_protocol::{In, Out};

const SIZE: usize = 512 * 1024 * 1024;

static mut MOD_ID: Option<u32> = None;
static mut NFT_LOGO: Option<(String, String)> = None;

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
            name: "mintexec".to_string(),
            desc: "Mint module".to_string(),
        },
        CommandDescriptor {
            id: 1,
            name: "mint".to_string(),
            desc: "Mint NFT".to_string(),
        },
        CommandDescriptor {
            id: 2,
            name: "logo".to_string(),
            desc: "Set NFT logo".to_string(),
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
            CommandInput::Id(id, input) => {
                if id == command_list[0].id {
                    match input {
                        Input::File(_, _, bytes) => {
                            let file = String::from_utf8(bytes);

                            if let Ok(file) = file {
                                let program = ProgramCreate::Wat("omega_program".to_string(), file);
                                in_exec = Some(In::MintExec(program));
                            }
                        }
                        _ => {}
                    };
                } else if id == command_list[1].id {
                    let mut contents = vec![];
                    unsafe {
                        if let Some(logo) = NFT_LOGO.clone() {
                            contents.push(ContentsCreate(
                                "Preview".to_string(),
                                format!("data:{};base64,{}", logo.0, logo.1),
                            ));
                        }
                    }

                    let mut modules = vec![];
                    unsafe {
                        if let Some(id) = MOD_ID {
                            modules.push(ModuleDescCreate(id, None));
                        }
                    }

                    let params = MintParams {
                        owner: "khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe"
                            .to_string(),
                        executions: None,
                        melted: Some(true),
                        attrs: vec![],
                        contents,
                        modules,
                    };

                    in_exec = Some(In::MintNft(params));
                } else if id == command_list[2].id {
                    match input {
                        Input::File(_, mime, bytes) => {
                            let encoded = BASE64_STANDARD.encode(bytes);

                            unsafe {
                                NFT_LOGO = Some((mime.clone(), encoded.clone()));
                            }

                            out_cmd = CommandOutput::Id(2, Output::Text("Logo update".to_string()));
                        }
                        _ => {}
                    };
                }
            }
            _ => {}
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
            Out::InvalidInput => {
                out = CommandOutput::Raw(Output::Text("Invalid input".to_string()));
            }
            Out::MintExecInvalid => {
                out = CommandOutput::Id(0, Output::Text("Mint exec invalid".to_string()));
            }
            Out::MintExec(result) => {
                if let ProgramCreateResult::Ok(id) = result {
                    unsafe {
                        MOD_ID = Some(*id);
                    }
                }

                out = CommandOutput::Id(0, Output::Text(format!("Mint exec result: {:?}", result)));
            }
            Out::MintInvalid => {
                out = CommandOutput::Id(1, Output::Text("Mint invalid".to_string()));
            }
            Out::Mint(result) => {
                out = CommandOutput::Id(1, Output::Text(format!("Mint result: {:?}", result)));
            }
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
