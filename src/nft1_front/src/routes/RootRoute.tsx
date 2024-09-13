import { createRootRouteWithContext, useRouter } from '@tanstack/react-router';
import { TanStackRouterDevtools } from '@tanstack/router-devtools';

import { Dashboard } from '@/Ui';
import { SmartView } from '@/nft';

const ErrorComponent = ({ error }: { error: Error }) => {
  const router = useRouter();

  return (
    <div>
      {error.message}
      <button
        onClick={() => {
          router.invalidate();
        }}
      >
        retry
      </button>
    </div>
  );
}

export const rootRoute = createRootRouteWithContext<{
  SmartView: SmartView
}>()({
  component: () => (
    <>
      <Dashboard />
      <TanStackRouterDevtools position="bottom-right"/>
    </>
  ),
  errorComponent: ErrorComponent
});
