import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';
import { HttpAgent, Actor, ActorSubclass } from '@dfinity/agent';

import { Nft1Service, Nft1ServiceIdl } from '../did';
export type { Nft1Module, Nft1 } from '../did';
export { Nft1ServiceIdl };

export const host =
  process.env.DFX_NETWORK === 'local'
    ? 'http://127.0.0.1:4943'
    : 'https://icp-api.io';

let agent: HttpAgent | undefined;

const createAgent = (identity: Secp256k1KeyIdentity) => {
  if (agent) {
    return agent;
  }

  agent = HttpAgent.createSync({ host, identity });

  if (process.env.DFX_NETWORK === 'local') {
    agent.fetchRootKey().catch((err) => {
      console.warn(
        'Unable to fetch root key. Check to ensure that your local replica is running'
      );
      console.error(err);
    });
  }

  return agent;
};

export type Nft1Actor = ActorSubclass<Nft1Service>;

export const createNft1Actor = (
  identity: Secp256k1KeyIdentity,
  canisterId: string
) => {
  const agent = createAgent(identity);

  return Actor.createActor<Nft1Service>(Nft1ServiceIdl, {
    agent,
    canisterId
  });
};
