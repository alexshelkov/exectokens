import { createRootRouteWithContext, useRouter } from '@tanstack/react-router';
import { TanStackRouterDevtools } from '@tanstack/router-devtools';

import { Layout } from '@/components/blocks/Layout';
import { SmartView } from '@/nft';

const ErrorComponent = ({ error }: { error: Error }) => {
  const router = useRouter();

  return (
    <div>
      <div>{error.message}</div>
      <div>
        <button
          onClick={() => {
            router.invalidate();
          }}
        >
          retry
        </button>
      </div>
    </div>
  );
};

export const rootRoute = createRootRouteWithContext<{
  SmartView: SmartView;
}>()({
  component: () => (
    <>
      <Layout />
      <TanStackRouterDevtools position="bottom-right" />
    </>
  ),
  errorComponent: ErrorComponent
});
