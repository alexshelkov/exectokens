# wasm-pack build --release --target web
# wasm2wat pkg/program_basic_main_bg.wasm > ../../scripts/programs/program_basic_main_bg.wat

cargo build --profile release-module --target=wasm32-unknown-unknown
wasm-opt -O ../../../../target/wasm32-unknown-unknown/release-module/program_basic_main_command_exec.wasm -o ../../../../target/wasm32-unknown-unknown/release-module/program_basic_main_command_exec.wasm
wasm2wat ../../../../target/wasm32-unknown-unknown/release-module/program_basic_main_command_exec.wasm > ../../../../scripts/programs/program_basic_main_command_exec.wat