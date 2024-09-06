import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';
import { Principal } from '@dfinity/principal';
import {
  createBrowserRouter,
  RouterProvider,
  useRouteError,
  unstable_dataStrategy,
  unstable_HandlerResult
} from 'react-router-dom';

import PWABadge from '@/PWABadge.tsx';
import { Dashboard } from '@/Ui.tsx';
import { ThemeProvider } from '@/components/layouts/theme';
import { IdentityProvider } from '@/components/feature/IdentityContext';

import NftsListRoute, {
  createNftsListLoader
} from '@/components/routes/NftsListRoute';
import NftDetailsRoute, {
  createNftDetailsLoader
} from '@/components/routes/NftDetailsRoute';
import { createCanisterActors } from '@/nft/canister';
import { SmartView } from './nft';

function ErrorPage() {
  const error = useRouteError();
  console.error(error);

  return (
    <div id="error-page">
      <h1>Oops!</h1>
      <p>Sorry, an unexpected error has occurred.</p>
      <p>
        <i>{error.statusText || error.message}</i>
      </p>
    </div>
  );
}

const testKey = new Uint8Array([
  109, 123, 223, 178, 14, 78, 125, 84, 205, 53, 144, 130, 175, 72, 187, 120, 78,
  119, 45, 64, 167, 14, 89, 94, 195, 17, 216, 151, 151, 169, 250, 225
]);
const identity = Secp256k1KeyIdentity.fromSecretKey(testKey);
const owner = identity.getPrincipal()

const actorsFactory = createCanisterActors();

const View = SmartView(identity, actorsFactory, owner);

const nftsListLoader = createNftsListLoader(View);
const nftDetailsLoader = createNftDetailsLoader(View);

const createRouter = () => {
  if (routerCreated) {
    return routerCreated;
  }

  console.log('createRouter');

  routerCreated = createBrowserRouter([
    {
      path: '/',
      element: <Dashboard />,
      errorElement: <ErrorPage />,
      children: [
        { index: true, element: <NftsListRoute />, loader: nftsListLoader },
        {
          path: ':canisterId/:nftId',
          element: <NftDetailsRoute />,
          loader: nftDetailsLoader
        }
      ]
    }
  ]);

  return routerCreated;
};

let routerCreated: any;

const router = createRouter();

function Router() {
  // const router = useMemo(() => {
  //   return createRouter();
  // }, []);

  return <RouterProvider router={router} />;
}

function App() {
  return (
    <ThemeProvider>
      <IdentityProvider>
        <Router />
        <PWABadge />
      </IdentityProvider>
    </ThemeProvider>
  );
}

export default App;
