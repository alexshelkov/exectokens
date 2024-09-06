cargo build --release --target wasm32-unknown-unknown --package nft1_backend
mkdir -p target/did/
candid-extractor target/wasm32-unknown-unknown/release/nft1_backend.wasm > target/did/nft1_backend.did
