import { createRoute } from '@tanstack/react-router';

import NftDetails from '@/components/feature/NftDetails';
import { SmartNftModule } from '@/nft';
import { CollectionAttrs, Nft } from '@/routes/types';
import { rootRoute } from '@/routes/RootRoute';
import { useRef } from 'react';

export interface NftDetailsLoader {
  nft: Nft;
  collectionAttrs: CollectionAttrs;
  modules: SmartNftModule[];
}

export const nftDetailsRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '/$canisterId/$nftId',
  component: NftDetailsRoute,
  loader: async ({ params: { canisterId, nftId }, context: { SmartView } }) => {
    const Canister = await SmartView(canisterId);

    const collectionAttrs = await Canister.collection();

    const { viewNft, getExecPublic } = Canister.view(BigInt(nftId));

    const nftData = await viewNft();

    const thumbUrl = URL.createObjectURL(nftData.preview);

    const modules = await getExecPublic();

    const nft = {
      nft: nftData,
      thumbUrl
    };

    return { collectionAttrs, nft, modules };
  }
});

export default function NftDetailsRoute() {
  const { collectionAttrs, nft, modules } = nftDetailsRoute.useLoaderData();

  

  return (
    <div className="pt-2 w-full">
      <NftDetails
        collectionAttrs={collectionAttrs}
        nft={nft}
        modules={modules}
      />
    </div>
  );
}
