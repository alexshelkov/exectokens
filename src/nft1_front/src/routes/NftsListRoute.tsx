import { createRoute } from '@tanstack/react-router';

import NftsList from '@/components/feature/NftsList';
import { SmartCollection, SmartNft } from '@/nft/core';
import { rootRoute } from '@/routes/RootRoute';

export interface NftsLoader {
  collection: SmartCollection;
  nfts: SmartNft[]
}

export const nftsListRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '$canisterId',
  component: NftsListRoute,
  loader: async ({ params: { canisterId }, context: { SmartView } }) => {
    const View = await SmartView(canisterId);

    const collection = await View.collection();

    const nfts = await View.nfts();

    return { collection, nfts };
  }
});

export default function NftsListRoute() {
  const { collection, nfts } = nftsListRoute.useLoaderData();

  return <NftsList collection={collection} nfts={nfts} />;
}
