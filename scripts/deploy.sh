dfx canister uninstall-code nft1_backend

set -e

dfx canister create nft1_backend

dfx build nft1_backend
mkdir -p target/did/
candid-extractor target/wasm32-unknown-unknown/release/nft1_backend.wasm > target/did/nft1_backend.did
dfx generate nft1_backend

# ------------------------------------------------------------------------------------------------------------------

program_main=$(node ./scripts/programs/load.js program_basic_main_bg)
collection_logo='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAANlBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3dmhyAAAAEnRSTlMAqq2PKkQlBZcjjIg3J0aTgQ2orqxeAAAAd0lEQVQY01WPWw6EMAwDnUdLUpYC97/sGooQnVaRJj92cOGmImqOwWJ7gmTYcrsWPBS9NkZ/Nwb4DtQKjBkOS7jIhjHToMBat/WZVAF+ny98EwKdnGrJtOMEzqMwqcGD+y6Ezti5WG9z9a7jGIu8m0ajf85vDvIHaPMCsqJHXgQAAAAASUVORK5CYII='

dfx canister install \
    --mode=install \
    --identity icrc-admin \
    --argument="(record{name=\"Name\";symbol=\"Symbol\";logo=\"$collection_logo\";author=\"Author\";executions=opt 1;refills=opt 1;program=$program_main})" \
    --yes \
    nft1_backend

# ----------
# MINT NFT 0
# ----------

echo "Minting NFT 1"

program_canvas=$(node ./scripts/programs/load.js program_basic_canvas_bg)

dfx canister call nft1_backend mint_exec "(record {program=$program_canvas})"

contents='record {"Preview"; "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEW1pdXtHCQ9Y5g7AAAAGklEQVQI12NAA4z//zdgEA/YCRBkacMksAAA87Qr4XDjZmAAAAAASUVORK5CYII="}'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {1}; modules_hidden=opt vec {} })"

# ------
# MINT 1
# ------

echo "Minting NFT 2"

program_command=$(node ./scripts/programs/load.js program_basic_command_bg)

dfx canister call nft1_backend mint_exec "(record {program=$program_command})"

contents='record {"Preview"; "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEX15JwisUxzhw6qAAAAG0lEQVQI12NAA4z//zdgEA/YCRGY2sjRgQUAAHTZMD31tNU9AAAAAElFTkSuQmCC"}'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {2}; modules_hidden=opt vec {0} })"

dfx deploy nft1_backend
