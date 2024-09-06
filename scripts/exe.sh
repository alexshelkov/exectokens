# dfx canister call nft1_backend mint '(record {nft_contents=vec {}; owner=principal "mrf3e-6i4nb-wubi7-k3zy5-hdfbn-ln6jj-suim2-c3jmk-xhwzj-knl3h-qqe"; nft_attrs=vec {}; nft_modules=vec {}})'

dfx canister call nft1_backend produce_logs 

# dfx canister status nft1_backend

# df.x canister update-settings nft1_backend --log_visibility public