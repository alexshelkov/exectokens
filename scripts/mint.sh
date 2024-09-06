USER=$(dfx --identity icrc-admin identity get-principal)

echo '(*) User:'
echo $USER

echo ""

echo '(*) Creating NFT with metadata "hello":'

dfx canister call nft1_backend mintDip721 \
    "(principal\"$USER\", vec{record {
        purpose=variant{Rendered};
        data=blob\"hello-1\";
        key_val_data=vec {
            record{
                \"contentType\";
                variant{TextContent=\"text/plain\"};
            };
            record {
                \"locationType\";
                variant { Nat8Content=4:nat8 }
            };
        }
    }}, blob\"hello-2\")"

echo ""

echo '(*) Metadata of the newly created NFT:'
dfx canister call nft1_backend getMetadataDip721 '(1)'
