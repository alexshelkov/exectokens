import { AspectRatio } from '@/components/ui/aspect-ratio';
import { Badge } from '@/components/ui/badge';
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
