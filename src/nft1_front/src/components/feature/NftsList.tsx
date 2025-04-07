import { Link } from '@tanstack/react-router';

import NftCard from '@/components/blocks/NftCard';
import { SmartCollection, SmartNft } from '@/nft/core';
import { nftLink } from '@/routes/links';

export interface NftsListProps {
  collection: SmartCollection;
  nfts: SmartNft[];
}

export default function NftsList({ collection, nfts }: NftsListProps) {
  return (
    <div className="pt-2 grid w-full gap-4 sm:grid-cols-4">
      {nfts.map((nft) => {
        return (
          <Link
            {...nftLink}
            key={`${collection.id}/${nft.id}`}
            params={{
              canisterId: collection.id,
              nftId: `${nft.id}`
            }}
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
