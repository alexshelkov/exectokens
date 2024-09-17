import { Nft1ContentHeader, Nft1Module, Nft1 } from '@/ic/did';

export interface SmartCollection {
  id: string;
  name: string;
  symbol: string;
  logo: [] | [[Nft1ContentHeader, Uint8Array]];
  author: string;
}

export interface SmartNft {
  id: bigint;
  preview: Blob;
  attrs: Nft1['attrs']
}

export interface SmartNftViewCanvas {
  height: number;
  width: number;
  memory: WebAssembly.Memory;
  ptr: number;
  tick: number;
  scale: number;
  view: (delta: number) => boolean;
}

export interface SmartNftViewCommand {
  run: (command: string) => Promise<string | undefined>;
}

export const smartNftViewNames = ['Canvas', 'Command'] as const;
export type SmartNftViewName = (typeof smartNftViewNames)[number];

export interface SmartNftViews {
  viewName?: SmartNftViewName;
  viewCanvas?: SmartNftViewCanvas;
  viewCommand?: SmartNftViewCommand;
}

export interface SmartNftModule extends Nft1Module, SmartNftViews {
  size: number;
}

// -----

// export interface SmartNftView extends SmartNft {
//   thumbUrl: string
//   // id: bigint;
//   // preview: Blob;
// }

// export interface Nft {
//   nft: SmartNft;
//   thumbUrl: string;
// }

// export interface CollectionAttrs {
//   id: string;
//   name: string;
//   symbol: string;
//   logo: [] | [[Nft1ContentHeader, Uint8Array]];
//   author: string;
// }

// export interface Collection extends CollectionAttrs {
//   nfts: Nft[];
// }
