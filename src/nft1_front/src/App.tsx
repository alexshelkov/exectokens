import { RouterProvider, createRouter } from '@tanstack/react-router';

import { ThemeProvider } from '@/components/layouts/theme';

import { createCanisterActors } from '@/nft/canister';
import { InitSmartView } from '@/nft';
import { identity, owner } from '@/env';
import { routeTree } from '@/routes/tree';

const actorsFactory = createCanisterActors();

const SmartView = InitSmartView(identity, actorsFactory, owner);

const router = createRouter({
  routeTree,
  defaultStaleTime: Infinity,
  defaultPreloadStaleTime: 0,
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
      <RouterProvider router={router} context={{ SmartView }} />
    </ThemeProvider>
  );
}

export default App;
