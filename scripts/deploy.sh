dfx canister uninstall-code nft1_backend

dfx canister create nft1_backend

dfx build nft1_backend
mkdir -p target/did/
candid-extractor target/wasm32-unknown-unknown/release/nft1_backend.wasm > target/did/nft1_backend.did
dfx generate nft1_backend

# ------------------------------------------------------------------------------------------------------------------

program_canvas_min=$(node ./scripts/programs/canvas_basic.js)

program_add=$(node -e 'console.log(JSON.stringify(JSON.stringify({modules: [{name: "test", code: {Wat: "(module (func $add (export \"add\") (param $a i32) (param $b i32) (result i32) (i32.add (local.get $a) (local.get $b)) ) )"}}]})))')

program_limits=$(node -e 'console.log(JSON.stringify(JSON.stringify({modules: [{name: "test", code: {Wat: "(module (func $smart_nft_limits (export \"smart_nft_limits\") (param $a i64) (param $b i64) (result i64 i64) (local.get $a) (i64.const 5))  )"}}]})))')

program_trivial=$(node -e 'console.log(JSON.stringify(JSON.stringify({modules: [{name: "test", code: {Wat: "(module)"}}]})))')

# ------------------------------------------------------------------------------------------------------------------

dfx canister install \
    --mode=install \
    --identity icrc-admin \
    --argument="(record{name=\"Name\";symbol=\"Symbol\";logo=\"Logo\";author=\"Author\";executions=opt 1;refils=opt 1;program=$program_canvas_min})" \
    --yes \
    nft1_backend

# ----
# MINT
# ----

contents_headers='record {role=variant { Preview }; start=0; end=90; mime="text"}'
contents='137; 80; 78; 71; 13; 10; 26; 10; 0; 0; 0; 13; 73; 72; 68; 82; 0; 0; 0; 8; 0; 0; 0; 8; 8; 2; 0; 0; 0; 75; 109; 41; 220; 0; 0; 0; 34; 73; 68; 65; 84; 8; 215; 99; 120; 173; 168; 135; 21; 49; 0; 241; 255; 15; 90; 104; 8; 33; 129; 83; 7; 97; 163; 136; 214; 129; 93; 2; 43; 2; 0; 181; 31; 90; 179; 225; 252; 176; 37; 0; 0; 0; 0; 73; 69; 78; 68; 174; 66; 96; 130'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {contents_headers=vec {$contents_headers}; contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {1}; modules_hidden=opt vec {0} })"

dfx deploy nft1_backend