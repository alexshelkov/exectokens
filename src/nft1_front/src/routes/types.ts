import { Identity, SmartNft, SmartPreview } from '@/nft';

export interface Nft {
  nft: SmartNft;
  thumbUrl: string;
}

export interface CollectionAttrs {
  id: string;
  name: string;
  symbol: string;
  logo: string;
  author: string;
}

export interface Collection extends CollectionAttrs {
  nfts: Nft[];
}
