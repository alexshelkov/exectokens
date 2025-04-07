import { Nft1Module } from '@/ic/did';
import { Nft1Actor } from '@/ic/lib';
import {
  isExportExists,
  SmartNftViewCanvas,
  SmartNftViewCommand,
  SmartNftViewCommandImports,
  SmartNftExecImports,
  SmartNft
} from '@/nft/core';
import { createWebAsmModule } from '@/nft/utils';
import { CreatePromise, createPromise } from '@/utils';
import {
  serialize,
  deserialize,
  CommandInput as PostcardCommandInput,
  CommandOutput as PostcardCommandOutput,
  Attr as PostcardAttr,
  AttrVal as PostcardAttrVal
} from '@/nft/bindings/core';

const createAttrs = (
  { id, attrs }: SmartNft,
  { nft1Actor }: { nft1Actor: Nft1Actor }
) => {
  let mod:
    | {
        memory: WebAssembly.Memory;
        ptr: number;
        main: (len: number) => void;
      }
    | undefined;

  const init = (exports: WebAssembly.Exports) => {
    const {
      smart_nft_view_attr_buffer: bufferGet,
      smart_nft_view_attrs: main
    } = exports;

    if (!(typeof main === 'function' && typeof bufferGet === 'function')) {
      return;
    }

    mod = {
      memory: exports.memory as WebAssembly.Memory,
      main: main as (len: number) => void,
      ptr: bufferGet()
    };

    return () => {
      if (!attrs.length) {
        return;
      }

      if (!mod) {
        throw new Error('Attrs exports have not be init yet');
      }

      const postcardAttrs: PostcardAttr[] = attrs.map((attr) => {
        const [tag] = Object.keys(
          attr.val
        ) as unknown as (keyof typeof attr.val)[];

        if (!tag) {
          throw new Error('Attr tag not found');
        }

        const val = { tag, value: attr.val[tag] } as PostcardAttrVal;

        return {
          id: attr.id,
          name: attr.name,
          val
        } satisfies PostcardAttr;
      });

      const result = serialize('Attrs', [postcardAttrs]);

      const buffer = new Uint8ClampedArray(
        mod.memory.buffer,
        mod.ptr,
        result.length
      );
      buffer.set(result);

      mod.main(result.length);
    };
  };

  return { init };
};

const createExec = (id: bigint, { nft1Actor }: { nft1Actor: Nft1Actor }) => {
  let mod:
    | {
        memory: WebAssembly.Memory;
        ptr: number;
        main: (len: number) => void;
        free: () => void;
      }
    | undefined;

  const imports = {
    smart_nft_exec(len) {
      console.log('smart_nft_exec', id, len);

      if (!mod) {
        throw new Error('Exec exports have not be init yet');
      }

      const command = new Uint8Array(
        new Uint8ClampedArray(mod.memory.buffer, mod.ptr, len)
      );

      nft1Actor.exec({ id, command }).then((result) => {
        console.log('smart_nft_exec nft1Actor', result);

        if (!mod) {
          throw new Error('Exec exports have not be init yet');
        }

        if ('Err' in result) {
          throw new Error('Exec canister error');
        }

        const data = result.Ok[0];

        if (!(data instanceof Uint8Array)) {
          throw new Error('Exec result is not an Uint8Array');
        }

        console.log('smart_nft_exec run', data);

        const buffer = new Uint8ClampedArray(
          mod.memory.buffer,
          mod.ptr,
          data.length
        );
        buffer.set(data);

        mod.main(data.length);
        mod.free();
      });
    }
  } satisfies SmartNftExecImports;

  const init = (exports: WebAssembly.Exports) => {
    const {
      smart_nft_exec_ret: main,
      smart_nft_exec_buffer: bufferGet,
      smart_nft_exec_buffer_free: bufferFree
    } = exports;

    if (
      !(
        typeof main === 'function' &&
        typeof bufferFree === 'function' &&
        typeof bufferGet === 'function'
      )
    ) {
      return;
    }

    mod = {
      memory: exports.memory as WebAssembly.Memory,
      main: main as (len: number) => void,
      ptr: bufferGet(),
      free: bufferFree as () => void
    };
  };

  return { imports, init };
};

export const createViewCanvas = async (
  { id, attrs, preview }: SmartNft,
  { nft1Actor }: { nft1Actor: Nft1Actor },
  nft1Module: Nft1Module,
  moduleCode: Uint8Array | number[]
): Promise<SmartNftViewCanvas> => {
  const { init: attrsInit } = createAttrs(
    { id, attrs, preview },
    { nft1Actor }
  );
  const { imports: execImports, init: execInit } = createExec(id, {
    nft1Actor
  });

  const instance = await createWebAsmModule(moduleCode, execImports);

  // Run deps
  attrsInit(instance.exports)?.();
  execInit(instance.exports);

  const {
    smart_nft_view_canvas_get_height: height,
    smart_nft_view_canvas_get_width: width,
    smart_nft_view_canvas_buffer: buffer,
    smart_nft_view_canvas: start,
    smart_nft_view_canvas_tick: tick,
    smart_nft_view_canvas_get_ticker: ticker,
    smart_nft_view_canvas_get_scale: scale,
    smart_nft_view_canvas_keyup: keyUp,
    smart_nft_view_canvas_keydown: keyDown
  } = instance.exports;

  if (
    !(
      typeof height === 'function' &&
      typeof width === 'function' &&
      typeof buffer === 'function' &&
      typeof start === 'function'
    )
  ) {
    throw new Error(
      'Canvas view can not be created, required exports not provided'
    );
  }

  const exportNames = nft1Module.exports;

  return {
    name: 'Canvas',
    height: height(),
    width: width(),
    ptr: buffer(),
    memory: instance.exports.memory as WebAssembly.Memory,
    start: start as () => void,
    tick:
      isExportExists(exportNames, 'smart_nft_view_canvas_tick') &&
      typeof tick === 'function'
        ? (tick as (delta: number) => boolean)
        : undefined,
    keyUp:
      isExportExists(exportNames, 'smart_nft_view_canvas_keyup') &&
      typeof keyUp === 'function'
        ? (keyUp as (code: number) => void)
        : undefined,
    keyDown:
      isExportExists(exportNames, 'smart_nft_view_canvas_keydown') &&
      typeof keyDown === 'function'
        ? (keyDown as (code: number) => void)
        : undefined,
    ticker:
      isExportExists(exportNames, 'smart_nft_view_canvas_get_ticker') &&
      typeof ticker === 'function'
        ? ticker()
        : 0,
    scale:
      isExportExists(exportNames, 'smart_nft_view_canvas_get_scale') &&
      typeof scale === 'function'
        ? scale()
        : 1
  };
};

export const createCommandView = async (
  { id }: SmartNft,
  { nft1Actor }: { nft1Actor: Nft1Actor },
  nft1Module: Nft1Module,
  moduleCode: Uint8Array | number[]
): Promise<SmartNftViewCommand> => {
  // Creating external deps
  const { imports: execImports, init: execInit } = createExec(id, {
    nft1Actor
  });

  let viewResult: CreatePromise<PostcardCommandOutput> | undefined;

  const viewImports = {
    smart_nft_view_command_ret(len) {
      console.log('smart_nft_view_command ret', len);

      if (!viewResult) {
        throw new Error('Unexpected ret call');
      }

      const buffer = new Uint8ClampedArray(memory.buffer, ptr, len);

      const [, resolve] = viewResult;

      try {
        resolve(deserialize('CommandOutput', Array.from(buffer)));
      } catch (err) {
        console.error('CommandView deserialize error', err);
      }
    }
  } satisfies SmartNftViewCommandImports;

  const instance = await createWebAsmModule(moduleCode, {
    ...execImports,
    ...viewImports
  });

  // Run deps
  execInit(instance.exports);

  const {
    smart_nft_view_command: main,
    smart_nft_view_command_buffer: bufferGet,
    smart_nft_view_command_buffer_free: bufferFree
  } = instance.exports;

  if (
    !(
      typeof main === 'function' &&
      typeof bufferFree === 'function' &&
      typeof bufferGet === 'function'
    )
  ) {
    throw new Error(
      'Command view can not be created, required exports not provided'
    );
  }

  const ptr: number = bufferGet();
  const memory = instance.exports.memory as WebAssembly.Memory;

  return {
    name: 'Command',
    async run(command: PostcardCommandInput) {
      console.log('Command run');

      if (viewResult) {
        return viewResult[0];
      }

      viewResult = createPromise<PostcardCommandOutput>();

      try {
        const encoded = serialize('CommandInput', command);
        const len = encoded.length;

        const buffer = new Uint8ClampedArray(memory.buffer, ptr, len);
        buffer.set(encoded);

        console.log('Command run', [...buffer]);

        main(len);
      } catch (err) {
        console.error('CommandView run error', err);
      }

      return viewResult[0].then((result) => {
        console.log('Command result free');

        viewResult = undefined;

        bufferFree();

        return result;
      });
    }
  };
};
