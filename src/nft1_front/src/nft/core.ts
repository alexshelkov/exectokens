import { Nft1ContentHeader, Nft1Module, Nft1 } from '@/ic/did';
import {
  CommandInput as PostcardCommandInput,
  CommandOutput as PostcardCommandOutput
} from '@/nft/bindings/core';

export interface SmartCollection {
  id: string;
  name: string;
  symbol: string;
  logo: Blob;
  author: string;
}

export interface SmartNft {
  id: bigint;
  preview: Blob;
  attrs: Nft1['attrs'];
}

export interface SmartNftExecImports {
  smart_nft_exec: (len: number) => void;
}

export interface SmartNftPropsImports {
  smart_nft_melt_get: (len: number) => void;
}

export const smartNftViewNames = ['Canvas', 'Command'] as const;
export type SmartNftViewName = (typeof smartNftViewNames)[number];

export interface SmartNftViewBase {
  name: SmartNftViewName;
}

export interface SmartNftViewCanvas extends SmartNftViewBase {
  name: 'Canvas';
  height: number;
  width: number;
  memory: WebAssembly.Memory;
  ptr: number;
  ticker: number;
  scale: number;
  start: () => void;
  tick?: (delta: number) => boolean;
  keyUp?: (code: number) => void;
  keyDown?: (code: number) => void;
}

export interface SmartNftViewCommandImports {
  smart_nft_view_command_ret: (len: number) => void;
}

export interface SmartNftViewCommand extends SmartNftViewBase {
  name: 'Command';
  run: (
    command: PostcardCommandInput
  ) => Promise<PostcardCommandOutput | undefined>;
}

export type SmartNftView = SmartNftViewCommand | SmartNftViewCanvas;

export interface SmartNftModule extends Nft1Module {
  size: number;
  views: SmartNftView[];
}

export type CommandInfo =
  | {
      origin: 'user';
      content: PostcardCommandInput;
    }
  | {
      origin: 'system';
      content: PostcardCommandOutput;
    };

export const isExportExists = (
  exports: SmartNftModule['exports'],
  name: string
) => {
  return exports.some((exp) => {
    if ('User' in exp) {
      return exp.User === name;
    }

    return false;
  });
};
