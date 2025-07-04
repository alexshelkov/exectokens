#!/bin/bash

display_help() {
    echo "Utility to deploy the NFT canisters"
    echo
    echo "Usage: $0 " >&2
    echo
    echo "   -b     Run 'dfx build ...'"
    echo "   -d     Run 'dfx deploy ...'"
    echo "   -g     Generate did files"
    echo "   -c     Set the canister id (1, 2 is supported, check dfx.json)"
    echo "   -x     The NFT flavor to deploy (basic[default] | snake | alpha)"
    echo
}

opt_build=false
opt_gen=false
opt_dep=false
opt_set=basic # basic | snake | alpha 
canister_name="nft1_backend"

while getopts bgdhc:x: opt; do
    case $opt in
        b) opt_build=true ;;
        g) opt_gen=true ;;
        d) opt_dep=true ;;
        h) display_help; exit 1 ;;
        c) canister_name="nft${OPTARG}_backend" ;;
        x) opt_set=$OPTARG ;;
        *) echo 'error in command line parsing' >&2
           exit 1
    esac
done

cr=$(tput setaf 1) # red
cg=$(tput setaf 2) # green
rr=$(tput sgr0)    # reset

echo "${cr}Working with $canister_name $opt_set variant...${rr}"
echo ""

# ------------------------------------------------------------------------------------------------------------------
dfx canister uninstall-code $canister_name

set -e

dfx canister create $canister_name

"$opt_build" && dfx build $canister_name

mkdir -p target/did/
"$opt_gen" && candid-extractor target/wasm32-unknown-unknown/release/nft1_backend.wasm > target/did/nft1_backend.did
"$opt_gen" && dfx generate $canister_name

# ------------------------------------------------------------------------------------------------------------------
name="Basic"
symbol="BSC"
author="Alex Sh"
init_program=program_basic_main_command_exec
logo="collection_basic"

if [[ "$opt_set" == "snake" ]]; then
    name="Snake"
    symbol="SNK"
    logo="collection_snake"
    init_program=program_alpha_main
fi

if [[ "$opt_set" == "alpha" ]]; then
    name="Alpha"
    symbol="ALP"
    logo="collection_alpha"
    init_program=program_alpha_main
fi

collection_logo=$(node ./scripts/node/base64.js $logo)

# Install canister
dfx canister install \
    --mode=install \
    --identity default \
    --argument="(record{name=\"$name\";symbol=\"$symbol\";logo=\"$collection_logo\";author=\"$author\";executions=opt 1;refills=opt 1;})" \
    --yes \
    $canister_name

# Init program
program_main=$(node ./scripts/node/load.js $init_program) 
dfx canister call $canister_name mint_exec "(record {program=$program_main })" #0
echo ""

# ------------------------------------------------------------------------------------------------------------------

IMG_A="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEW1pdXtHCQ9Y5g7AAAAGklEQVQI12NAA4z//zdgEA/YCRBkacMksAAA87Qr4XDjZmAAAAAASUVORK5CYII="
IMG_B="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEX15JwisUxzhw6qAAAAG0lEQVQI12NAA4z//zdgEA/YCRGY2sjRgQUAAHTZMD31tNU9AAAAAElFTkSuQmCC"
IMG_C="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEX/+b0At+9wrnH+AAAAGklEQVQI12NAA4z//zdgEA+AElQlcFiEBQAAQvEi6s0oFU0AAAAASUVORK5CYII="
IMG_D="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgAQMAAABJtOi3AAAABlBMVEW1pdWo5h36ZFYvAAAAHElEQVQI12NAA4z//4OJBmTiATvVCTQ7wPZiAwDIrSrh2j70WgAAAABJRU5ErkJggg==" 

principal="khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qe"

if [[ "$opt_set" == "basic" ]]; then
    
    echo "-------------------"
    echo "Minting basic NFT 1"
    echo "-------------------"

    program_canvas=$(node ./scripts/node/load.js program_basic_view_canvas)
    dfx canister call $canister_name mint_exec "(record {program=$program_canvas})" #1

    IMG_A=$(node ./scripts/node/base64.js collection_basic_nft_0)
    contents="record {\"Preview\"; \"$IMG_A\"}"

    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec {}; modules=vec {record { 1 };} })"

    echo ""

    echo "-------------------"
    echo "Minting basic NFT 2"
    echo "-------------------"

    program_canvas_keys=$(node ./scripts/node/load.js program_basic_view_canvas_keys)
    dfx canister call $canister_name mint_exec "(record {program=$program_canvas_keys})" #2

    IMG_B=$(node ./scripts/node/base64.js collection_basic_nft_1)
    contents="record {\"Preview\"; \"$IMG_B\"}"

    echo ""

    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec {}; modules=vec {record { 2 };} })"

    echo "-------------------"
    echo "Minting basic NFT 3"
    echo "-------------------"

    program_command=$(node ./scripts/node/load.js program_basic_view_command)
    dfx canister call $canister_name mint_exec "(record {program=$program_command})" #3

    IMG_C=$(node ./scripts/node/base64.js collection_basic_nft_2)
    contents="record {\"Preview\"; \"$IMG_C\"}"

    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec {}; modules=vec {record { 3 };} })"

    echo ""

    echo "-------------------"
    echo "Minting basic NFT 4"
    echo "-------------------"

    program_command_exec=$(node ./scripts/node/load.js program_basic_view_command_exec)
    dfx canister call $canister_name mint_exec "(record {program=$program_command_exec})" #4

    IMG_D=$(node ./scripts/node/base64.js collection_basic_nft_3)
    contents="record {\"Preview\"; \"$IMG_D\"}"

    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec {}; modules=vec {record { 4 }; record { 0; opt \"Private\" };} })"

    echo ""
fi

if [[ "$opt_set" == "snake" ]]; then

    echo "------------------"
    echo "Minting snake view"
    echo "------------------"

    program_snake=$(node ./scripts/node/load.js program_snake_view)
    dfx canister call $canister_name mint_exec "(record {program=$program_snake})" #1

    echo ""

    echo "-------------------"
    echo "Minting snake NFT 1"
    echo "-------------------"

    IMG_A=$(node ./scripts/node/base64.js collection_snake_nft_0)
    contents="record {\"Preview\"; \"$IMG_A\"}"

    attrs="record {id=0; name=\"Apple color\"; val=variant {RGBA=record {62; 68; 63; 1}}; }; record {id=1; name=\"Body color\"; val=variant {RGBA=record {62; 68; 63; 1}}; }; record {id=2; name=\"Board color\"; val=variant {RGBA=record {213; 204; 209; 1}}; }; record {id=3; name=\"Game delay\"; val=variant {Num=750}; }"
    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec { $attrs }; modules=vec {record { 1 };} })"

    echo ""

    echo "-------------------"
    echo "Minting snake NFT 2"
    echo "-------------------"

    IMG_B=$(node ./scripts/node/base64.js collection_snake_nft_1)
    contents="record {\"Preview\"; \"$IMG_B\"}"

    attrs="record {id=0; name=\"Apple color\"; val=variant {RGBA=record {215; 84; 169; 1}}; }; record {id=1; name=\"Body color\"; val=variant {RGBA=record {56; 68; 152; 1}}; }; record {id=2; name=\"Board color\"; val=variant {RGBA=record {167; 224; 174; 1}}; }; record {id=3; name=\"Game delay\"; val=variant {Num=200}; }"
    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec { $attrs }; modules=vec {record { 1 };} })"

    echo ""

    echo "-------------------"
    echo "Minting snake NFT 3"
    echo "-------------------"

    IMG_C=$(node ./scripts/node/base64.js collection_snake_nft_2)
    contents="record {\"Preview\"; \"$IMG_C\"}"

    attrs="record {id=0; name=\"Apple color\"; val=variant {RGBA=record {244; 214; 149; 1}}; }; record {id=1; name=\"Body color\"; val=variant {RGBA=record {208; 162; 66; 1}}; }; record {id=2; name=\"Board color\"; val=variant {RGBA=record {196; 61; 31; 1}}; }; record {id=3; name=\"Game delay\"; val=variant {Num=200}; }"
    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec { $attrs }; modules=vec {record { 1 };} })"

    echo ""

fi

if [[ "$opt_set" == "alpha" ]]; then
    
    echo "-------------------"
    echo "Minting alpha NFT 1"
    echo "-------------------"

    program=$(node ./scripts/node/load.js program_alpha_view)
    dfx canister call $canister_name mint_exec "(record {program=$program})" #1

    IMG_A=$(node ./scripts/node/base64.js collection_alpha_nft_0)
    contents="record {\"Preview\"; \"$IMG_A\"}"

    dfx canister call $canister_name mint "(record {contents=vec {$contents}; owner=\"$principal\"; attrs=vec {}; modules=vec {record { 1 }; record { 0; opt \"Private\" };} })"

    echo ""
fi

# ------------------------------------------------------------------------------------------------------------------

"$opt_dep" && dfx deploy $canister_name
