import { createRoute } from '@tanstack/react-router';

import NftsList from '@/components/feature/CollectionsList';
import { SmartCollection } from '@/nft/core';
import { rootRoute } from '@/routes/RootRoute';
import { NFT_CANISTERS_IDS } from '@/env';

export interface NftsLoader {
  collection: SmartCollection;
}

export const collectionsListRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '/',
  component: NftsListRoute,
  loader: async ({ context: { SmartView } }) => {
    const collections = await Promise.all(
      NFT_CANISTERS_IDS.map(async (canisterId) => {
        const View = await SmartView(canisterId);

        return View.collection();
      })
    );

    return { collections, route: 'collectionsListRoute' };
  }
});

function NftsListRoute() {
  const { collections } = collectionsListRoute.useLoaderData();

  return <NftsList collections={collections} />;
}
