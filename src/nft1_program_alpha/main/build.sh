cargo build --profile release-module --target=wasm32-unknown-unknown
wasm-opt -O ../../../target/wasm32-unknown-unknown/release-module/program_alpha_main.wasm -o ../../../target/wasm32-unknown-unknown/release-module/program_alpha_main.wasm
wasm2wat ../../../target/wasm32-unknown-unknown/release-module/program_alpha_main.wasm > ../../../scripts/programs/program_alpha_main.wat