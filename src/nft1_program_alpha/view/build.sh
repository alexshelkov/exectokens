cargo build --profile release-module --target=wasm32-unknown-unknown
wasm-opt -O ../../../target/wasm32-unknown-unknown/release-module/program_alpha_view.wasm -o ../../../target/wasm32-unknown-unknown/release-module/program_alpha_view.wasm
wasm2wat ../../../target/wasm32-unknown-unknown/release-module/program_alpha_view.wasm > ../../../scripts/programs/program_alpha_view.wat
