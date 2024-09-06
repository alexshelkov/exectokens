import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';
import { RouterProvider, createRouter } from '@tanstack/react-router';

import PWABadge from '@/PWABadge.tsx';
import { ThemeProvider } from '@/components/layouts/theme';
import { IdentityProvider } from '@/components/feature/IdentityContext';

import { rootRoute } from '@/routes/RootRoute';
import { indexRoute } from '@/routes/IndexRoute';
import { nftsListRoute } from '@/routes/NftsListRoute';
import { nftDetailsRoute } from '@/routes/NftDetailsRoute';
import { createCanisterActors } from '@/nft/canister';
import { InitSmartView } from '@/nft';
// import { createRoute } from 'react-dom/client';

const testKey = new Uint8Array([
  109, 123, 223, 178, 14, 78, 125, 84, 205, 53, 144, 130, 175, 72, 187, 120, 78,
  119, 45, 64, 167, 14, 89, 94, 195, 17, 216, 151, 151, 169, 250, 225
]);
const identity = Secp256k1KeyIdentity.fromSecretKey(testKey);
const owner = identity.getPrincipal();

const actorsFactory = createCanisterActors();

const SmartView = InitSmartView(identity, actorsFactory, owner);

const routeTree = rootRoute.addChildren([
  indexRoute,
  nftsListRoute,
  nftDetailsRoute
]);

const router = createRouter({
  routeTree,
  defaultStaleTime: Infinity,
  context: { SmartView }
});

declare module '@tanstack/react-router' {
  interface Register {
    router: typeof router;
  }
}

function App() {
  return (
    <ThemeProvider>
      <IdentityProvider>
        <RouterProvider router={router} context={{ SmartView }} />
        <PWABadge />
      </IdentityProvider>
    </ThemeProvider>
  );
}

export default App;
