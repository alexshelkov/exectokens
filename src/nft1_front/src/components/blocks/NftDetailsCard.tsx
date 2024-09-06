// import Image from 'next/image';
// import Link from 'next/link';
import {
  CornerDownLeft,
  ChevronLeft,
  Home,
  LineChart,
  Package,
  Package2,
  PanelLeft,
  PlusCircle,
  Search,
  Settings,
  ShoppingCart,
  Upload,
  Users2
} from 'lucide-react';

import { Badge } from '@/components/ui/badge';
import {
  Breadcrumb,
  BreadcrumbItem,
  BreadcrumbLink,
  BreadcrumbList,
  BreadcrumbPage,
  BreadcrumbSeparator
} from '@/components/ui/breadcrumb';
import { Button } from '@/components/ui/button';
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle
} from '@/components/ui/card';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger
} from '@/components/ui/dropdown-menu';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue
} from '@/components/ui/select';
import { Sheet, SheetContent, SheetTrigger } from '@/components/ui/sheet';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow
} from '@/components/ui/table';
import { Textarea } from '@/components/ui/textarea';
import { ToggleGroup, ToggleGroupItem } from '@/components/ui/toggle-group';
import { forwardRef, useEffect, useRef, useState } from 'react';
import { Command } from '@/components/feature/NftDetails';
import { SmartNftViewName } from '@/nft';

interface CommandInteractionsProps {
  commandsHistory: {
    origin: 'user' | 'system';
    content: string;
  }[];
  onRun: (command: string) => void;
}

const CommandInteractions = ({
  onRun,
  commandsHistory
}: CommandInteractionsProps) => {
  const ref = useRef<HTMLDivElement>(null);
  const [command, setCommand] = useState('');

  const handleCommandRun = () => {
    if (command) {
      setCommand('');
      onRun(command);
    }
  };

  useEffect(() => {
    if (ref.current) {
      ref.current.scrollTop = ref.current?.scrollHeight;
    }
  }, [commandsHistory.length]);

  return (
    <div className="relative flex h-full min-h-[50vh] flex-col rounded-xl bg-muted/50 p-4">
      <div className="max-h-[400px] overflow-y-auto" ref={ref}>
        {commandsHistory.map(({ content, origin }, index) => {
          return (
            <div
              key={index}
              className={`mb-2 ${
                origin === 'user' ? 'text-yellow-400' : 'text-green-400'
              }`}
            >
              <span className="mr-2 font-semibold">
                {origin === 'user' ? '$' : '#'}
              </span>
              {content}
            </div>
          );
        })}
      </div>

      <Badge variant="outline" className="absolute right-3 top-3">
        Output
      </Badge>
      <div className="flex-1" />
      <form
        className="relative overflow-hidden rounded-lg border bg-background focus-within:ring-1 focus-within:ring-ring"
        x-chunk="dashboard-03-chunk-1"
        onSubmit={(e) => {
          e.preventDefault();
          handleCommandRun();
        }}
      >
        <Label htmlFor="message" className="sr-only">
          Message
        </Label>
        <Textarea
          id="message"
          value={command}
          onChange={(e) => setCommand(e.target.value)}
          placeholder="Type your command here..."
          className="min-h-12 resize-none border-0 p-3 shadow-none focus-visible:ring-0"
          onKeyUp={(e) => {
            if (e.key === 'Enter' && !e.shiftKey) {
              e.preventDefault();
            }
          }}
          onKeyDown={(e) => {
            if (e.key === 'Enter' && !e.shiftKey) {
              handleCommandRun();
              e.preventDefault();
            }
          }}
        />
        <div className="flex items-center p-3 pt-0">
          <Button type="submit" size="sm" className="ml-auto gap-1.5">
            Run
            <CornerDownLeft className="size-3.5" />
          </Button>
        </div>
      </form>
    </div>
  );
};

export const NftDetailsCard = forwardRef<
  HTMLCanvasElement,
  {
    name: string;
    symbol: string;
    id: bigint;
    image: string;
    alt: string;
    viewName?: SmartNftViewName;
    modules: { name: string; size: number; exports: string[] }[];
    commandsHistory: {
      origin: 'user' | 'system';
      content: string;
    }[];
    onRun: (command: string) => void;
    onBack: () => void;
  }
>(
  (
    {
      name,
      id,
      symbol,
      image,
      alt,
      modules,
      viewName,
      commandsHistory,
      onRun,
      onBack
    },
    ref
  ) => {
    return (
      <main className="grid flex-1 auto-rows-max gap-4">
        <div className="flex items-center gap-4">
          <Button
            variant="outline"
            size="icon"
            className="h-7 w-7"
            onClick={onBack}
          >
            <ChevronLeft className="h-4 w-4" />
            <span className="sr-only">Back</span>
          </Button>
          <h1 className="flex-1 shrink-0 whitespace-nowrap text-xl font-semibold tracking-tight sm:grow-0">
            {name} #{`${id}`}
          </h1>
          <Badge variant="outline" className="ml-auto sm:ml-0">
            {symbol}
          </Badge>
        </div>
        <div>
          <div className="grid grid-cols-3 gap-4 mb-4">
            <Card x-chunk="dashboard-07-chunk-0" className="col-span-2">
              <CardContent className="p-6">
                {viewName === 'Canvas' ? (
                  <canvas ref={ref} style={{ imageRendering: 'pixelated' }} />
                ) : null}
                {viewName === 'Command' ? (
                  <CommandInteractions
                    commandsHistory={commandsHistory}
                    onRun={onRun}
                  />
                ) : null}
              </CardContent>
            </Card>

            <Card className="overflow-hidden" x-chunk="dashboard-07-chunk-4">
              <CardHeader>
                <CardTitle>Content</CardTitle>
              </CardHeader>
              <CardContent className="">
                <div className="grid gap-2">
                  <img
                    src={image}
                    alt={alt}
                    className="mx-auto object-contain w-full max-w-[700px] max-h-[700px]"
                  />
                </div>
              </CardContent>
            </Card>
          </div>

          <Card x-chunk="dashboard-07-chunk-1">
            <CardHeader>
              <CardTitle>Program</CardTitle>
            </CardHeader>

            <CardContent>
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead className="w-[100px]">Module</TableHead>
                    <TableHead>Exports</TableHead>
                    <TableHead>Size</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {modules.map(({ name, exports, size }) => {
                    return (
                      <TableRow key={name}>
                        <TableCell className="font-semibold">{name}</TableCell>
                        <TableCell>{exports.join(', ')}</TableCell>
                        <TableCell>{size}</TableCell>
                      </TableRow>
                    );
                  })}
                </TableBody>
              </Table>
            </CardContent>
          </Card>
        </div>
      </main>
    );
  }
);
