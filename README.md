EXECUTABLE TOKENS
=================

**WORK IN PROGRESS**

A research prototype and initial implementation of executable tokens (SmartNFT) technology.

This repo contain:

- An implementation of executable tokens smart contract on top of Internet Computer blockchain.
- Plasma -- a browser which act as an environment to work with  executable tokens.
- Few examples of the NFTs collections.

Running examples
================

Running the backend:

1. Install all dependncies via `cargo`
2. Start the dfx server `./scripts/start.sh`
3. Deploy the example `./scripts/deploy.sh`

Running the client:
1. Go to client folder `src/nft1_front/`
2. Install the dependncies via `yarn`
3. Edit the .env file and replace the `NFT_CANISTERS_IDS` with the canister which been deployed
4. Run `yarn dev`