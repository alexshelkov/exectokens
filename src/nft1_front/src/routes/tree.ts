import { rootRoute } from '@/routes/RootRoute';
import { collectionsListRoute } from '@/routes/CollectionsListRoute';
import { nftsListRoute } from '@/routes/NftsListRoute';
import { nftDetailsRoute } from '@/routes/NftDetailsRoute';

export const routeTree = rootRoute.addChildren([
  collectionsListRoute,
  nftsListRoute,
  nftDetailsRoute
]);
