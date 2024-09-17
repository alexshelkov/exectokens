#!/bin/bash

opt_build=false
opt_gen=false
opt_dep=false
opt_x=""

while getopts bgdx: opt; do
    case $opt in
        b) opt_build=true ;;
        g) opt_gen=true ;;
        d) opt_dep=true ;;
        x) opt_x=$OPTARG ;;
        *) echo 'error in command line parsing' >&2
           exit 1
    esac
done

dfx canister uninstall-code nft1_backend

set -e

dfx canister create nft1_backend

"$opt_build" && dfx build nft1_backend

mkdir -p target/did/
candid-extractor target/wasm32-unknown-unknown/release/nft1_backend.wasm > target/did/nft1_backend.did
"$opt_gen" && dfx generate nft1_backend

# ------------------------------------------------------------------------------------------------------------------

program_main=$(node ./scripts/programs/load.js program_basic_main_bg)
collection_logo='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAANlBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3dmhyAAAAEnRSTlMAqq2PKkQlBZcjjIg3J0aTgQ2orqxeAAAAd0lEQVQY01WPWw6EMAwDnUdLUpYC97/sGooQnVaRJj92cOGmImqOwWJ7gmTYcrsWPBS9NkZ/Nwb4DtQKjBkOS7jIhjHToMBat/WZVAF+ny98EwKdnGrJtOMEzqMwqcGD+y6Ezti5WG9z9a7jGIu8m0ajf85vDvIHaPMCsqJHXgQAAAAASUVORK5CYII='

dfx canister install \
    --mode=install \
    --identity icrc-admin \
    --argument="(record{name=\"Name\";symbol=\"Symbol\";logo=\"$collection_logo\";author=\"Author\";executions=opt 1;refills=opt 1;program=$program_main})" \
    --yes \
    nft1_backend

echo "-------------"
echo "Minting NFT 1"
echo "-------------"

program_canvas=$(node ./scripts/programs/load.js program_basic_canvas_bg)

dfx canister call nft1_backend mint_exec "(record {program=$program_canvas})"

contents='record {"Preview"; "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEW1pdXtHCQ9Y5g7AAAAGklEQVQI12NAA4z//zdgEA/YCRBkacMksAAA87Qr4XDjZmAAAAAASUVORK5CYII="}'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {record { 1 };} })"

echo "-------------"
echo "Minting NFT 2"
echo "-------------"

program_command=$(node ./scripts/programs/load.js program_basic_command_bg)

dfx canister call nft1_backend mint_exec "(record {program=$program_command})"

contents='record {"Preview"; "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEX15JwisUxzhw6qAAAAG0lEQVQI12NAA4z//zdgEA/YCRGY2sjRgQUAAHTZMD31tNU9AAAAAElFTkSuQmCC"}'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {record { 2 }; record { 0; opt \"Private\" };} })"


echo "-------------"
echo "Minting NFT 3"
echo "-------------"

program_melt=$(node ./scripts/programs/load.js program_basic_melt_bg)

dfx canister call nft1_backend mint_exec "(record {program=$program_melt})"

contents='record {"Preview"; "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEX/+b0At+9wrnH+AAAAGklEQVQI12NAA4z//zdgEA+AElQlcFiEBQAAQvEi6s0oFU0AAAAASUVORK5CYII="}'
principal=khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe

dfx canister call nft1_backend mint "(record {melted=opt false; contents=vec {$contents}; owner=principal \"$principal\"; attrs_headers=vec {}; attrs=vec {}; modules=vec {record { 3 }; record { 0; opt \"Private\" };} })"

"$opt_dep" && dfx deploy nft1_backend
