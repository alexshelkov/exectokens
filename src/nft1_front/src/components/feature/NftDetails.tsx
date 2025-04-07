import { NftDetailsCard } from '@/components/blocks/NftDetailsCard';
import { SmartCollection, SmartNft, SmartNftModule } from '@/nft/core';
import { CanvasView } from '@/components/feature/view/Canvas';
import { CommandView } from './view/Command';

export interface NftDetailsProps {
  nft: SmartNft;
  collectionAttrs: SmartCollection;
  modules: SmartNftModule[];
}

export default function NftDetails({
  collectionAttrs,
  nft,
  modules
}: NftDetailsProps) {
  const cardModules = modules.map((module) => {
    return {
      name: module.name,
      imports: module.imports.map((imp) => {
        if ('ImportFn' in imp) {
          return JSON.stringify(imp.ImportFn);
        }

        return imp.Import;
      }),
      exports: module.exports.map((exp) => {
        return JSON.stringify(exp);
      }),

      size: module.size
    };
  });

  const cardAttrs = nft.attrs.map((attr) => {
    return {
      name: attr.name,
      val: JSON.stringify(attr.val)
    };
  });

  const views = modules
    .flatMap((module) =>
      module.views.map((view) => {
        const key = `${module.name}/${view.name}`;

        if (view.name === 'Canvas') {
          return <CanvasView key={key} view={view} />;
        } else if (view.name === 'Command') {
          return <CommandView key={key} view={view} />;
        }

        return null;
      })
    )
    .filter((view) => !!view);

  return (
    <NftDetailsCard
      canisterId={collectionAttrs.id}
      name={collectionAttrs.name}
      symbol={collectionAttrs.symbol}
      id={nft.id}
      image={nft.preview}
      alt=""
      attrs={cardAttrs}
      modules={cardModules}
    >
      {views}
    </NftDetailsCard>
  );
}
