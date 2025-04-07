import { Actor } from '@dfinity/agent';
import { Principal } from '@dfinity/principal';

import { getPreviewBlob } from '@/nft/utils';
import { CanisterActorsFactory, Identity, getCanister } from '@/nft/canister';
import { Nft1, Nft1Actor, Nft1Module } from '@/ic/lib';
import {
  SmartCollection,
  SmartNft,
  SmartNftModule,
  SmartNftView
} from '@/nft/core';
import { createViewCanvas, createCommandView } from '@/nft/view';

export const nftIdToStr = (nftId: Nft1['id']) => {
  return `${nftId}`;
};

export const SmartModule = async (
  id: bigint,
  nftData: SmartNft,
  { nft1Actor }: { nft1Actor: Nft1Actor },
  nft1Module: Nft1Module,
  moduleCode: Uint8Array | number[]
): Promise<SmartNftModule> => {
  const processing = nft1Module.exports.map(async (exp) => {
    if ('View' in exp) {
      const view = [nftData, { nft1Actor }, nft1Module, moduleCode] as const;

      if ('Canvas' in exp.View) {
        return await createViewCanvas(...view);
      } else if ('Command' in exp.View) {
        return await createCommandView(...view);
      }
    }

    return undefined!; // NOTE: must filter out later
  });

  const views: SmartNftView[] = (await Promise.all(processing)).filter(
    (view) => !!view
  );

  return {
    ...nft1Module,
    views,
    size: moduleCode.length
  };
};

const SmartView = (
  { nft1Actor }: { nft1Actor: Nft1Actor },
  owner: Principal,
  nftsData: SmartNft[] | undefined
) => {
  return (id: bigint) => {
    let nftData: SmartNft | undefined = nftsData?.find((nft) => nft.id === id);
    let modules: SmartNftModule[] | undefined;

    const viewNft = async () => {
      if (nftData) {
        return nftData;
      }

      const [data] = await nft1Actor.get_public({ id, owner });

      if (!data) {
        throw new Error(`NFT not found: ${id}`);
      }

      nftData = {
        id: data.id,
        attrs: data.attrs,
        preview: getPreviewBlob(data.contents)
      };

      return nftData;
    };

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const waitForNftData = <P extends any[], R>(
      cb: (...args: P) => Promise<R>
    ) => {
      return async (...args: P): Promise<R> => {
        await viewNft();
        return cb(...args);
      };
    };

    const getExecPublic = async () => {
      if (modules) {
        return modules;
      }

      if (!nftData) {
        throw new Error('Unreachable');
      }

      const [data] = await nft1Actor.get_exec_public({ id });

      if (!data) {
        throw new Error(`NFT modules not found: ${id}`);
      }

      modules = await Promise.all(
        data.map(async ([module, moduleCode]) => {
          if (!nftData) {
            throw new Error('Unreachable');
          }

          return SmartModule(id, nftData, { nft1Actor }, module, moduleCode);
        })
      );

      return modules;
    };

    return {
      viewNft,
      getExecPublic: waitForNftData(getExecPublic)
    };
  };
};

const SmartList = (
  { nft1Actor }: { nft1Actor: Nft1Actor },
  owner: Principal,
  collectionId: string
) => {
  let nftsData: SmartNft[] | undefined;

  const collection = async (): Promise<SmartCollection> => {
    const data = await nft1Actor.collection_attrs();

    return {
      id: collectionId,
      name: data.name,
      symbol: data.symbol,
      logo: getPreviewBlob(data.logo[0]![1]),
      author: data.author
    } as SmartCollection;
  };

  const nfts = async () => {
    if (nftsData) {
      return nftsData;
    }

    const data = (await nft1Actor.list_public({ owner })) ?? [];

    nftsData = await Promise.all(
      data.map(async (data) => {
        return {
          id: data.id,
          attrs: data.attrs,
          preview: getPreviewBlob(data.contents)
        };
      })
    );

    return nftsData;
  };

  const view = SmartView({ nft1Actor }, owner, nftsData);

  return {
    collection,
    nfts,
    view
  };
};

export const InitSmartView = (
  identity: Identity,
  actorsFactory: CanisterActorsFactory,
  owner: Principal
) => {
  return async (collectionCanisterId: string) => {
    const nft1Actor = await getCanister(
      identity,
      actorsFactory,
      collectionCanisterId
    );

    const canisterId = Actor.canisterIdOf(nft1Actor).toText();

    return SmartList({ nft1Actor }, owner, canisterId);
  };
};

export type SmartView = ReturnType<typeof InitSmartView>;
