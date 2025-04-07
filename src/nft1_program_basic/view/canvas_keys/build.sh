cargo build --profile release-module --target=wasm32-unknown-unknown
wasm-opt -O ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas_keys.wasm -o ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas_keys.wasm
wasm2wat ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas_keys.wasm > ../../../../scripts/programs/program_basic_view_canvas_keys.wat
