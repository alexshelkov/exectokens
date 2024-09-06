import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';
import { ActorSubclass } from '@dfinity/agent';
import { IDL } from '@dfinity/candid';

import { createNft1Actor, Nft1Actor, Nft1ServiceIdl } from '@/ic/lib';

interface CreateActor {
  host?: string;
  canisterId: string;
  interfaceFactory: IDL.InterfaceFactory;
}

export interface IcWallet {
  createActor<T>(args: CreateActor): Promise<ActorSubclass<T>>;
}

export type Identity = Secp256k1KeyIdentity | IcWallet;

export const createCanisterActors = () => {
  const smartNftsActors: Record<string, Nft1Actor> = {};

  const getSmartNftCanister = async (
    identity: Secp256k1KeyIdentity,
    canisterId: string
  ) => {
    if (smartNftsActors[canisterId]) {
      return smartNftsActors[canisterId];
    }

    smartNftsActors[canisterId] = createNft1Actor(identity, canisterId);

    return smartNftsActors[canisterId];
  };

  const getWalletSmartNftCanister = async (
    wallet: IcWallet,
    canisterId: string
  ) => {
    if (smartNftsActors[canisterId]) {
      return smartNftsActors[canisterId];
    }

    smartNftsActors[canisterId] = await wallet.createActor<Nft1Actor>({
      canisterId,
      interfaceFactory: Nft1ServiceIdl
    });

    return smartNftsActors[canisterId];
  };

  return {
    getSmartNftCanister,
    getWalletSmartNftCanister
  };
};

export type CanisterActorsFactory = ReturnType<typeof createCanisterActors>;

export const getCanister = (
  identity: Identity,
  actorsFactory: CanisterActorsFactory,
  canisterId: string
) => {
  const { getSmartNftCanister, getWalletSmartNftCanister } = actorsFactory;

  return identity instanceof Secp256k1KeyIdentity
    ? getSmartNftCanister(identity, canisterId)
    : getWalletSmartNftCanister(identity, canisterId);
}