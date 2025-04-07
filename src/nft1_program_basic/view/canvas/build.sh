# wasm-pack build --target web
# wasm2wat pkg/program_basic_canvas_bg.wasm > ../../scripts/programs/program_basic_canvas_bg.wat

cargo build --profile release-module --target=wasm32-unknown-unknown
wasm-opt -O ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas.wasm -o ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas.wasm
wasm2wat ../../../../target/wasm32-unknown-unknown/release-module/program_basic_view_canvas.wasm > ../../../../scripts/programs/program_basic_view_canvas.wat
