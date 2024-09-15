wasm-pack build --target web
# wasm-opt -O -o pkg/program_basic_melt_bg.wasm pkg/program_basic_melt_bg.wasm 
wasm2wat pkg/program_basic_melt_bg.wasm > ../../scripts/programs/program_basic_melt_bg.wat
