import { createRoute } from '@tanstack/react-router';

import { rootRoute } from '@/routes/RootRoute';

export const indexRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '/',
  component: IndexRoute
});

export default function IndexRoute() {
  return (
    <div className="pt-2 w-full">
      <div>Index</div>
    </div>
  );
}
