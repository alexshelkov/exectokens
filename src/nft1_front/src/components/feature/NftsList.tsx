import { Link } from '@tanstack/react-router';

import NftCard from '@/components/blocks/NftCard';
import { Collection } from '@/routes/types';

export interface NftsListProps {
  collection: Collection;
}

export default function NftsList({ collection }: NftsListProps) {
  return (
    <div className="pt-2 grid w-full gap-4 sm:grid-cols-4">
      {collection.nfts.map((nft) => {
        return (
          <Link
            key={`${collection.id}/${nft.nft.id}`}
            to={`/${collection.id}/${nft.nft.id}`}
          >
            <NftCard
              image={nft.thumbUrl}
              id={nft.nft.id}
              name={collection.name}
              symbol={collection.symbol}
              author={collection.author}
              alt=""
            />
          </Link>
        );
      })}
    </div>
  );
}
