import { ChevronLeft } from 'lucide-react';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow
} from '@/components/ui/table';
import BlobImage from '@/components/blocks/BlobImage';
import { useNavigate } from '@tanstack/react-router';

export const NftDetailsCard = ({
  canisterId,
  name,
  id,
  symbol,
  image,
  alt,
  modules,
  attrs,
  children
}: {
  canisterId: string;
  name: string;
  symbol: string;
  id: bigint;
  image: Blob;
  alt: string;
  attrs: {
    name: string;
    val: string;
  }[];
  modules: {
    name: string;
    size: number;
    imports: string[];
    exports: string[];
  }[];
  children: React.ReactNode;
}) => {
  const navigate = useNavigate({ from: '/$canisterId/$nftId' });

  const handleBack = () => {
    navigate({
      to: '/$canisterId',
      params: { canisterId: canisterId }
    });
  };

  return (
    <main className="grid flex-1 auto-rows-max gap-4">
      <div className="flex items-center gap-4">
        <Button
          variant="outline"
          size="icon"
          className="h-7 w-7"
          onClick={handleBack}
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
            <CardContent className="p-6">{children}</CardContent>
          </Card>

          <Card className="overflow-hidden" x-chunk="dashboard-07-chunk-4">
            <CardHeader>
              <CardTitle>Content</CardTitle>
            </CardHeader>
            <CardContent className="">
              <div className="grid gap-2">
                <BlobImage image={image} alt={alt} />
              </div>
            </CardContent>
          </Card>
        </div>

        <Card x-chunk="dashboard-07-chunk-1" className="mb-4">
          <CardHeader>
            <CardTitle>Attributes</CardTitle>
          </CardHeader>

          <CardContent>
            <Table
              className="overflow-x-scroll"
              style={{ tableLayout: 'fixed' }}
            >
              <TableHeader className="w-full">
                <TableRow>
                  <TableHead className="w-[150px]">Name</TableHead>
                  <TableHead className="">Value</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody className="w-full">
                {attrs.map(({ name, val }) => {
                  return (
                    <TableRow key={name}>
                      <TableCell className="w-[150px] font-semibold break-words">
                        {name}
                      </TableCell>
                      <TableCell className="break-words">{val}</TableCell>
                    </TableRow>
                  );
                })}
              </TableBody>
            </Table>
          </CardContent>
        </Card>

        <Card x-chunk="dashboard-07-chunk-1">
          <CardHeader>
            <CardTitle>Modules</CardTitle>
          </CardHeader>

          <CardContent>
            <Table
              className="overflow-x-scroll"
              style={{ tableLayout: 'fixed' }}
            >
              <TableHeader className="w-full">
                <TableRow>
                  <TableHead className="w-[150px]">Module</TableHead>
                  <TableHead className="">Imports</TableHead>
                  <TableHead className="">Exports</TableHead>
                  <TableHead className="w-[100px]">Size</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody className="w-full">
                {modules.map(({ name, imports, exports, size }) => {
                  return (
                    <TableRow key={name}>
                      <TableCell className="w-[150px] font-semibold break-words">
                        {name}
                      </TableCell>
                      <TableCell className="break-words">
                        {imports.join(', ')}
                      </TableCell>
                      <TableCell className="break-words">
                        {exports.join(', ')}
                      </TableCell>
                      <TableCell className="w-[100px]">{size}</TableCell>
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
};
