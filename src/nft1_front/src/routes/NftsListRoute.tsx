import { createRoute } from '@tanstack/react-router';

import NftsList from '@/components/feature/NftsList';
import { Collection } from '@/routes/types';
import { rootRoute } from '@/routes/RootRoute';

export interface NftsLoader {
  collection: Collection;
}

export const nftsListRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '$canisterId',
  component: NftsListRoute,
  loader: async ({ params: { canisterId }, context: { SmartView } }) => {
    const Canister = await SmartView(canisterId);

    const collection = (await Canister.collection()) as Collection;

    const nftsData = await Canister.nfts();

    const nfts = await Promise.all(
      nftsData.map(async (nft) => {
        const thumbUrl = URL.createObjectURL(nft.preview);

        return {
          nft,
          thumbUrl
        };
      })
    );

    collection.nfts = nfts;

    return { collection };
  }
});

export default function NftsListRoute() {
  const { collection } = nftsListRoute.useLoaderData();

  return <NftsList collection={collection} />;
}
