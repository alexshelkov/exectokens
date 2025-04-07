import { createRoute } from '@tanstack/react-router';

import NftDetails from '@/components/feature/NftDetails';
import { SmartNft, SmartCollection, SmartNftModule } from '@/nft/core';
import { rootRoute } from '@/routes/RootRoute';

export interface NftDetailsLoader {
  nft: SmartNft;
  collectionAttrs: SmartCollection;
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

    const nft = await viewNft();

    const modules = await getExecPublic();

    return { collectionAttrs, nft, modules, route: 'nftDetailsRoute' };
  }
});

function NftDetailsRoute() {
  const { collectionAttrs, nft, modules } = nftDetailsRoute.useLoaderData();

  return (
    <NftDetails collectionAttrs={collectionAttrs} nft={nft} modules={modules} />
  );
}
