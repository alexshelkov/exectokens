import { Actor } from '@dfinity/agent';
import { Principal } from '@dfinity/principal';

import { getPreviewBlob } from '@/nft/utils';
import { SmartStore } from '@/nft/store';
import { CanisterActorsFactory, Identity, getCanister } from '@/nft/canister';
import { Nft1Actor, Nft1Module } from '@/ic/lib';
import {
  createSmartNftInstance,
  SmartNftModuleImports,
  SmartNftModuleInstance
} from '@/wasm/lib';

export interface SmartCollection {
  symbol: string;
  name: string;
  logo: string;
  author: string;
}

export interface SmartNft {
  id: bigint;
  preview: Blob;
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

const toResponse = (bytes: Uint8Array | number[]) => {
  return new Response(bytes as Uint8Array, {
    headers: { 'Content-Type': 'application/wasm' }
  });
};

const isExportExists = (exports: SmartNftModule['exports'], name: string) => {
  return exports.some((exp) => {
    if ('User' in exp) {
      return exp.User === name;
    }

    return false;
  });
};

const getCanvasView = (
  moduleInstance: SmartNftModuleInstance,
  memory: WebAssembly.Memory,
  exportNames: SmartNftModule['exports']
): SmartNftViewCanvas => {
  return {
    height: moduleInstance.smart_nft_view_canvas_get_height(),
    width: moduleInstance.smart_nft_view_canvas_get_width(),
    ptr: moduleInstance.smart_nft_view_canvas_get_buffer(),
    memory: memory,
    view: moduleInstance.smart_nft_view_canvas,
    tick: isExportExists(exportNames, 'smart_nft_view_canvas_get_tick')
      ? moduleInstance.smart_nft_view_canvas_get_tick()
      : 0,
    scale: isExportExists(exportNames, 'smart_nft_view_canvas_get_scale')
      ? moduleInstance.smart_nft_view_canvas_get_scale()
      : 1
  };
};

const getCommandView = (
  moduleInstance: SmartNftModuleInstance,
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  _memory: WebAssembly.Memory,
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  _exportNames: SmartNftModule['exports']
): SmartNftViewCommand => {
  return {
    async run(command: string) {
      const encoder = new TextEncoder();

      const result = await moduleInstance.smart_nft_view_command(
        encoder.encode(command)
      );

      const decoder = new TextDecoder();

      return decoder.decode(result);
    }
  };
};

export const Module = async (
  imports: SmartNftModuleImports,
  nft1Module: Nft1Module,
  moduleCode: Uint8Array | number[]
): Promise<SmartNftModule> => {
  const wasm = createSmartNftInstance(
    nft1Module.exports,
    nft1Module.imports,
    imports
  );

  const { memory } = await wasm.init(toResponse(moduleCode));

  const views = nft1Module.exports.reduce(
    (views, exp) => {
      if ('View' in exp) {
        if ('Canvas' in exp.View) {
          views.avail.push('Canvas');
          views.viewCanvas = getCanvasView(wasm, memory, nft1Module.exports);
        } else if ('Command' in exp.View) {
          views.avail.push('Command');
          views.viewCommand = getCommandView(wasm, memory, nft1Module.exports);
        }
      }

      return views;
    },
    { avail: [] } as SmartNftViews & { avail: string[] }
  );

  const viewHint = isExportExists(nft1Module.exports, 'smart_nft_view_name')
    ? (wasm.smart_nft_view_name() as SmartNftViewName)
    : undefined;

  if (views.avail.includes(viewHint as SmartNftViewName)) {
    views.viewName = viewHint;
  } else {
    views.viewName = views.avail.shift() as SmartNftViewName | undefined;
  }

  return {
    ...nft1Module,
    ...views,
    size: moduleCode.length
  };
};

const SmartView = (
  { nft1Actor }: { nft1Actor: Nft1Actor },
  nftsData: SmartNft[] | undefined
) => {
  const canisterId = Actor.canisterIdOf(nft1Actor).toText();

  return (id: bigint) => {
    const imports: SmartNftModuleImports = {
      async smart_nft_main_run_async(command) {
        const [result] = await nft1Actor.exec({ id, command });

        if (!result) {
          return new Uint8Array(0);
        }

        return result as Uint8Array;
      }
    };

    let nftData: SmartNft | undefined = nftsData?.find((nft) => nft.id === id);
    let modules: SmartNftModule[] | undefined;

    const viewNft = async () => {
      if (nftData) {
        return nftData;
      }

      const [data] = await nft1Actor.get_public({ id });

      if (!data) {
        throw new Error(`NFT not found: ${id}`);
      }

      const store = await SmartStore.store(canisterId);

      const preview = await store.getOr('preview', 0, () =>
        getPreviewBlob(data)
      );

      nftData = {
        id: data.id,
        preview
      };

      return nftData;
    };

    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const waitForNftData = <P extends any[], R>(
      cb: (...args: P) => Promise<R>
    ) => {
      return async (...args: P): Promise<R> => {
        await viewNft();
        return cb(...args);
      };
    };

    const getExecPublic = async () => {
      if (modules) {
        return modules;
      }

      if (!nftData) {
        throw new Error('Unreachble');
      }

      const [data] = await nft1Actor.get_exec_public({ id });

      if (!data) {
        throw new Error(`NFT modules not found: ${id}`);
      }

      modules = await Promise.all(
        data.map(async ([module, moduleCode]) =>
          Module(imports, module, moduleCode)
        )
      );

      return modules;
    };

    return {
      viewNft,
      getExecPublic: waitForNftData(getExecPublic)
    };
  };
};

const SmartPreview = (
  { nft1Actor }: { nft1Actor: Nft1Actor },
  owner: Principal
) => {
  const canisterId = Actor.canisterIdOf(nft1Actor).toText();
  let nftsData: SmartNft[] | undefined;

  const collection = async () => {
    const datas = await nft1Actor.collection_attrs();

    return {
      id: canisterId,
      symbol: datas.symbol,
      name: datas.name,
      logo: datas.logo,
      author: datas.author
    };
  };

  const nfts = async () => {
    if (nftsData) {
      return nftsData;
    }

    const datas = (await nft1Actor.list_public({ owner })) ?? [];

    nftsData = await Promise.all(
      datas.map(async (data) => {
        const store = await SmartStore.store(canisterId);

        const preview = await store.getOr('preview', 0, () =>
          getPreviewBlob(data)
        );

        return {
          id: data.id,
          preview
        };
      })
    );

    return nftsData;
  };

  const view = SmartView({ nft1Actor }, nftsData);

  return {
    collection,
    nfts,
    view
  };
};

export const InitSmartView = (
  identity: Identity,
  actorsFactory: CanisterActorsFactory,
  owner: Principal
) => {
  return async (collectionCanisterId: string) => {
    const nft1Actor = await getCanister(
      identity,
      actorsFactory,
      collectionCanisterId
    );

    return SmartPreview({ nft1Actor }, owner);
  };
};

export type SmartView = ReturnType<typeof InitSmartView>;
