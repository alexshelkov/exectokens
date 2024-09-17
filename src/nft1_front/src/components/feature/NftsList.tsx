import { Link } from '@tanstack/react-router';

import NftCard from '@/components/blocks/NftCard';
import { SmartCollection, SmartNft } from '@/nft/core';

export interface NftsListProps {
  collection: SmartCollection;
  nfts: SmartNft[]
}

export default function NftsList({ collection, nfts }: NftsListProps) {
  return (
    <div className="pt-2 grid w-full gap-4 sm:grid-cols-4">
      {nfts.map((nft) => {
        return (
          <Link
            key={`${collection.id}/${nft.id}`}
            to={`/${collection.id}/${nft.id}`}
          >
            <NftCard
              image={nft.preview}
              id={nft.id}
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
