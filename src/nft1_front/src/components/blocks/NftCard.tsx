import { Heart } from 'lucide-react';

import { AspectRatio } from '@/components/ui/aspect-ratio';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardFooter } from '@/components/ui/card';
import BlobImage from '@/components/blocks/BlobImage';

export default function NftCard({
  id,
  symbol,
  name,
  image,
  author,
  alt
}: {
  id: bigint;
  symbol: string;
  name: string;
  author: string;
  image: Blob;
  alt: string;
}) {
  return (
    <Card className="bg-zinc-900 text-white overflow-hidden">
      <CardContent className="p-0 relative">
        <AspectRatio ratio={1 / 1}>
          <BlobImage image={image} alt={alt} />
        </AspectRatio>
        <Button
          size="icon"
          variant="ghost"
          className="absolute top-2 right-2 text-white hover:text-white hover:bg-white/20"
        >
          <Heart className="h-5 w-5" />
        </Button>
      </CardContent>
      <CardFooter className="flex justify-between items-center p-4">
        <div>
          <h3 className="font-semibold text-lg">
            {name} #{`${id}`}
          </h3>
          <p className="text-sm text-zinc-400">by {author}</p>
        </div>
        <Badge variant="secondary" className="bg-zinc-800 text-white">
          {symbol}
        </Badge>
      </CardFooter>
    </Card>
  );
}
