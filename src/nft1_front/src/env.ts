import { Base64 } from 'js-base64';
import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';

export const DFX_NETWORK = process.env.DFX_NETWORK;
export const DFX_HOST =
  process.env.DFX_NETWORK === 'local'
    ? 'http://127.0.0.1:4943'
    : 'https://icp-api.io';

if (!process.env.NFT_CANISTERS_IDS) {
  throw new Error('NFT_CANISTERS_IDS is not set');
}
export const NFT_CANISTERS_IDS = process.env.NFT_CANISTERS_IDS.split(',').map(
  (id) => id.trim()
);

const testKey = Base64.toUint8Array(process.env.TEST_KEY || '');
export const identity = Secp256k1KeyIdentity.fromSecretKey(testKey);
export const owner = identity.getPrincipal();
