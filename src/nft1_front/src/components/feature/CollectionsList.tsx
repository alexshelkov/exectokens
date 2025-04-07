import { Link } from '@tanstack/react-router';

import { SmartCollection } from '@/nft/core';
import CollectionCard from '@/components/blocks/CollectionCard';
import { collectionLink } from '@/routes/links';

export interface CollectionsListProps {
  collections: SmartCollection[];
}

export default function CollectionsList({ collections }: CollectionsListProps) {
  return (
    <div className="pt-2 grid w-full gap-4 sm:grid-cols-4">
      {collections.map((collection) => {
        return (
          <Link
            {...collectionLink}
            key={`${collection.id}`}
            params={{ canisterId: collection.id }}
          >
            <CollectionCard
              id={collection.id}
              symbol={collection.symbol}
              name={collection.name}
              author={collection.author}
              image={collection.logo}
              alt=""
            />
          </Link>
        );
      })}
    </div>
  );
}
