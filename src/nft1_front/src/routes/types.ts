import { Nft1ContentHeader } from '@/ic/did';
import { SmartNft } from '@/nft';

export interface Nft {
  nft: SmartNft;
  thumbUrl: string;
}

export interface CollectionAttrs {
  id: string;
  name: string;
  symbol: string;
  logo: [] | [[Nft1ContentHeader, Uint8Array]];
  author: string;
}

export interface Collection extends CollectionAttrs {
  nfts: Nft[];
}
