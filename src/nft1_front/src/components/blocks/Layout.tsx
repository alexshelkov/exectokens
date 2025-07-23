import { Outlet, Link, LinkOptions, useMatches } from '@tanstack/react-router';
import { Package, PanelLeft, Settings } from 'lucide-react';

import {
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  BreadcrumbList,
  BreadcrumbPage,
  BreadcrumbSeparator
} from '@/components/ui/breadcrumb';
import { Button } from '@/components/ui/button';
import { Sheet, SheetContent, SheetTrigger } from '@/components/ui/sheet';
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger
} from '@/components/ui/tooltip';
import logo from '@/assets/logo.png';
import { cn } from '@/lib/utils';
import { indexLink } from '@/routes/links';

const MenuItem = ({
  active,
  name,
  icon,
  ...linkOptions
}: {
  active?: boolean;
  name: string;
  icon: React.ReactElement;
} & LinkOptions) => {
  return (
    <Tooltip>
      <TooltipTrigger asChild>
        <Link {...linkOptions}>
          <Button
            variant="ghost"
            size="icon"
            className={cn('rounded-lg', { 'bg-accent': active })}
            aria-label={name}
          >
            {icon}
            <span className="sr-only">{name}</span>
          </Button>
        </Link>
      </TooltipTrigger>
      <TooltipContent side="right" sideOffset={5}>
        {name}
      </TooltipContent>
    </Tooltip>
  );
};

const MenuItemMobile = ({
  active,
  name,
  icon,
  ...linkOptions
}: {
  active?: boolean;
  name: string;
  icon: React.ReactElement;
} & LinkOptions) => {
  return (
    <Link
      {...linkOptions}
      className={cn(`flex items-center gap-4 px-2.5 hover:text-foreground`, {
        'text-muted-foreground': !active
      })}
    >
      {icon}
      {name}
    </Link>
  );
};

const Nav = () => {
  const matches = useMatches();

  const match = matches.find(
    (d) => !!d.loaderData && 'route' in d.loaderData
  )?.loaderData;

  let breadcrumbs = <></>;

  if (match) {
    if ('collection' in match) {
      breadcrumbs = (
        <>
          <BreadcrumbSeparator />
          <BreadcrumbItem>
            <BreadcrumbPage>{match.collection.name}</BreadcrumbPage>
          </BreadcrumbItem>
        </>
      );
    } else if ('collectionAttrs' in match && 'nft' in match) {
      breadcrumbs = (
        <>
          <BreadcrumbSeparator />
          <BreadcrumbItem>
            <BreadcrumbPage>{match.collectionAttrs.name}</BreadcrumbPage>
          </BreadcrumbItem>
          <BreadcrumbSeparator />
          <BreadcrumbItem>
            <BreadcrumbPage>#{`${match.nft.id}`}</BreadcrumbPage>
          </BreadcrumbItem>
        </>
      );
    }
  }

  return (
    <Breadcrumb>
      <BreadcrumbList>
        <BreadcrumbItem>
          <BreadcrumbLink asChild>
            <Link {...indexLink}>Dashboard</Link>
          </BreadcrumbLink>
        </BreadcrumbItem>

        {breadcrumbs}
      </BreadcrumbList>
    </Breadcrumb>
  );
};

export function Layout() {
  return (
    <div className="flex min-h-screen w-full flex-col bg-muted/40">
      <aside className="hidden sm:flex inset-y fixed  left-0 z-20 flex-col h-full  border-r">
        <div className="border-b p-2">
          <Button variant="outline" size="icon" aria-label="Home">
            <img src={logo} />
          </Button>
        </div>
        <nav className="grid gap-1 p-2">
          <MenuItem icon={<Package className="h-5 w-5" />} name="NFTs" active />
        </nav>
        <nav className="mt-auto grid gap-1 p-2">
          <MenuItem icon={<Settings className="h-5 w-5" />} name="Settings" />
        </nav>
      </aside>

      <div className="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">
        <header className="sticky top-0 z-30 flex h-14 items-center gap-4 border-b bg-background px-4 sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">
          <Sheet>
            <SheetTrigger asChild>
              <Button size="icon" variant="outline" className="sm:hidden">
                <PanelLeft className="h-5 w-5" />
                <span className="sr-only">Toggle Menu</span>
              </Button>
            </SheetTrigger>
            <SheetContent side="left" className="sm:max-w-xs">
              <nav className="grid gap-6 text-lg font-medium">
                <Link
                  className="group flex h-10 w-10 shrink-0 items-center justify-center gap-2 rounded-full bg-primary text-lg font-semibold text-primary-foreground md:text-base"
                  {...indexLink}
                >
                  <img src={logo} />
                  <span className="sr-only">PlasmaFox</span>
                </Link>
                <MenuItemMobile
                  icon={<Package className="h-5 w-5" />}
                  name="NFTs"
                />
                <MenuItemMobile
                  icon={<Settings className="h-5 w-5" />}
                  name="Settings"
                />
              </nav>
            </SheetContent>
          </Sheet>
          <Nav />
        </header>
        <main className="grid flex-1 items-start gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">
          <Outlet />
        </main>
      </div>
    </div>
  );
}
