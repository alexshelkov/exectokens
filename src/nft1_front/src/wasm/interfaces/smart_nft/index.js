export default function create(
  createStaticImports,
  createSimpleImports,
) {
  let wasm;

  const heap = new Array(128).fill(undefined);

  heap.push(undefined, null, true, false);

  function getObject(idx) {
    return heap[idx];
  }

  let heap_next = heap.length;

  function dropObject(idx) {
    if (idx < 132) return;
    heap[idx] = heap_next;
    heap_next = idx;
  }

  function takeObject(idx) {
    const ret = getObject(idx);
    dropObject(idx);
    return ret;
  }

  function addHeapObject(obj) {
    if (heap_next === heap.length) heap.push(heap.length + 1);
    const idx = heap_next;
    heap_next = heap[idx];

    heap[idx] = obj;
    return idx;
  }

  function debugString(val) {
    // primitive types
    const type = typeof val;
    if (type == 'number' || type == 'boolean' || val == null) {
      return `${val}`;
    }
    if (type == 'string') {
      return `"${val}"`;
    }
    if (type == 'symbol') {
      const description = val.description;
      if (description == null) {
        return 'Symbol';
      } else {
        return `Symbol(${description})`;
      }
    }
    if (type == 'function') {
      const name = val.name;
      if (typeof name == 'string' && name.length > 0) {
        return `Function(${name})`;
      } else {
        return 'Function';
      }
    }
    // objects
    if (Array.isArray(val)) {
      const length = val.length;
      let debug = '[';
      if (length > 0) {
        debug += debugString(val[0]);
      }
      for (let i = 1; i < length; i++) {
        debug += ', ' + debugString(val[i]);
      }
      debug += ']';
      return debug;
    }
    // Test for built-in
    const builtInMatches = /\[object ([^\]]+)\]/.exec(toString.call(val));
    let className;
    if (builtInMatches.length > 1) {
      className = builtInMatches[1];
    } else {
      // Failed to match the standard '[object ClassName]'
      return toString.call(val);
    }
    if (className == 'Object') {
      // we're a user defined class or Object
      // JSON.stringify avoids problems with cycles, and is generally much
      // easier than looping through ownProperties of `val`.
      try {
        return 'Object(' + JSON.stringify(val) + ')';
      } catch (_) {
        return 'Object';
      }
    }
    // errors
    if (val instanceof Error) {
      return `${val.name}: ${val.message}\n${val.stack}`;
    }
    // TODO we could test for more things here, like `Set`s and `Map`s.
    return className;
  }

  let WASM_VECTOR_LEN = 0;

  let cachedUint8ArrayMemory0 = null;

  function getUint8ArrayMemory0() {
    if (
      cachedUint8ArrayMemory0 === null ||
      cachedUint8ArrayMemory0.byteLength === 0
    ) {
      cachedUint8ArrayMemory0 = new Uint8Array(wasm.memory.buffer);
    }
    return cachedUint8ArrayMemory0;
  }

  const cachedTextEncoder =
    typeof TextEncoder !== 'undefined'
      ? new TextEncoder('utf-8')
      : {
          encode: () => {
            throw Error('TextEncoder not available');
          }
        };

  const encodeString =
    typeof cachedTextEncoder.encodeInto === 'function'
      ? function (arg, view) {
          return cachedTextEncoder.encodeInto(arg, view);
        }
      : function (arg, view) {
          const buf = cachedTextEncoder.encode(arg);
          view.set(buf);
          return {
            read: arg.length,
            written: buf.length
          };
        };

  function passStringToWasm0(arg, malloc, realloc) {
    if (realloc === undefined) {
      const buf = cachedTextEncoder.encode(arg);
      const ptr = malloc(buf.length, 1) >>> 0;
      getUint8ArrayMemory0()
        .subarray(ptr, ptr + buf.length)
        .set(buf);
      WASM_VECTOR_LEN = buf.length;
      return ptr;
    }

    let len = arg.length;
    let ptr = malloc(len, 1) >>> 0;

    const mem = getUint8ArrayMemory0();

    let offset = 0;

    for (; offset < len; offset++) {
      const code = arg.charCodeAt(offset);
      if (code > 0x7f) break;
      mem[ptr + offset] = code;
    }

    if (offset !== len) {
      if (offset !== 0) {
        arg = arg.slice(offset);
      }
      ptr = realloc(ptr, len, (len = offset + arg.length * 3), 1) >>> 0;
      const view = getUint8ArrayMemory0().subarray(ptr + offset, ptr + len);
      const ret = encodeString(arg, view);

      offset += ret.written;
      ptr = realloc(ptr, len, offset, 1) >>> 0;
    }

    WASM_VECTOR_LEN = offset;
    return ptr;
  }

  let cachedDataViewMemory0 = null;

  function getDataViewMemory0() {
    if (
      cachedDataViewMemory0 === null ||
      cachedDataViewMemory0.buffer.detached === true ||
      (cachedDataViewMemory0.buffer.detached === undefined &&
        cachedDataViewMemory0.buffer !== wasm.memory.buffer)
    ) {
      cachedDataViewMemory0 = new DataView(wasm.memory.buffer);
    }
    return cachedDataViewMemory0;
  }

  const cachedTextDecoder =
    typeof TextDecoder !== 'undefined'
      ? new TextDecoder('utf-8', { ignoreBOM: true, fatal: true })
      : {
          decode: () => {
            throw Error('TextDecoder not available');
          }
        };

  if (typeof TextDecoder !== 'undefined') {
    cachedTextDecoder.decode();
  }

  function getStringFromWasm0(ptr, len) {
    ptr = ptr >>> 0;
    return cachedTextDecoder.decode(
      getUint8ArrayMemory0().subarray(ptr, ptr + len)
    );
  }

  function getArrayU8FromWasm0(ptr, len) {
    ptr = ptr >>> 0;
    return getUint8ArrayMemory0().subarray(ptr / 1, ptr / 1 + len);
  }

  function smart_nft_view_canvas_get_buffer() {
    const ret = wasm.smart_nft_view_canvas_get_buffer();
    return ret >>> 0;
  }

  function smart_nft_view_canvas_get_width() {
    const ret = wasm.smart_nft_view_canvas_get_height();
    return ret >>> 0;
  }

  function smart_nft_view_canvas_get_height() {
    const ret = wasm.smart_nft_view_canvas_get_height();
    return ret >>> 0;
  }

  function smart_nft_view_canvas_get_scale() {
    const ret = wasm.smart_nft_view_canvas_get_scale();
    return ret;
  }

  function smart_nft_view_canvas_get_tick() {
    const ret = wasm.smart_nft_view_canvas_get_tick();
    return ret;
  }

  function smart_nft_view_canvas(elapsed_ms) {
    const ret = wasm.smart_nft_view_canvas(elapsed_ms);
    return ret !== 0;
  }

  function passArray8ToWasm0(arg, malloc) {
    const ptr = malloc(arg.length * 1, 1) >>> 0;
    getUint8ArrayMemory0().set(arg, ptr / 1);
    WASM_VECTOR_LEN = arg.length;
    return ptr;
  }

  function smart_nft_view_command(command) {
    const ptr0 = passArray8ToWasm0(command, wasm.__wbindgen_malloc);
    const len0 = WASM_VECTOR_LEN;
    const ret = wasm.smart_nft_view_command(ptr0, len0);
    return takeObject(ret);
  }

  function smart_nft_view_name() {
    let deferred1_0;
    let deferred1_1;
    try {
      const retptr = wasm.__wbindgen_add_to_stack_pointer(-16);
      wasm.smart_nft_view_name(retptr);
      var r0 = getDataViewMemory0().getInt32(retptr + 4 * 0, true);
      var r1 = getDataViewMemory0().getInt32(retptr + 4 * 1, true);
      deferred1_0 = r0;
      deferred1_1 = r1;
      return getStringFromWasm0(r0, r1);
    } finally {
      wasm.__wbindgen_add_to_stack_pointer(16);
      wasm.__wbindgen_free(deferred1_0, deferred1_1, 1);
    }
  }

  function handleError(f, args) {
    try {
      return f.apply(this, args);
    } catch (e) {
      wasm.__wbindgen_exn_store(addHeapObject(e));
    }
  }

  async function __wbg_load(module, imports) {
    if (typeof Response === 'function' && module instanceof Response) {
      if (typeof WebAssembly.instantiateStreaming === 'function') {
        try {
          return await WebAssembly.instantiateStreaming(module, imports);
        } catch (e) {
          if (module.headers.get('Content-Type') != 'application/wasm') {
            console.warn(
              '`WebAssembly.instantiateStreaming` failed because your server does not serve wasm with `application/wasm` MIME type. Falling back to `WebAssembly.instantiate` which is slower. Original error:\n',
              e
            );
          } else {
            throw e;
          }
        }
      }

      const bytes = await module.arrayBuffer();
      return await WebAssembly.instantiate(bytes, imports);
    } else {
      const instance = await WebAssembly.instantiate(module, imports);

      if (instance instanceof WebAssembly.Instance) {
        return { instance, module };
      } else {
        return instance;
      }
    }
  }

  function __wbg_get_imports() {
    const imports = {};
    imports.wbg = {};

    createStaticImports(
      () => wasm,
      {
        WASM_VECTOR_LEN,
        takeObject,
        getObject,
        addHeapObject,
        passStringToWasm0,
        debugString,
        getStringFromWasm0,
        getArrayU8FromWasm0,
        getDataViewMemory0
      },
      imports
    );

    createSimpleImports(
      () => wasm,
      {
        WASM_VECTOR_LEN,
        takeObject,
        getObject,
        addHeapObject,
        passStringToWasm0,
        debugString,
        getStringFromWasm0,
        getArrayU8FromWasm0,
        getDataViewMemory0,
        passArray8ToWasm0,
        handleError,
      },
      imports
    );

    return imports;
  }

  function __wbg_init_memory(imports, memory) {}

  function __wbg_finalize_init(instance, module) {
    wasm = instance.exports;
    __wbg_init.__wbindgen_wasm_module = module;
    cachedDataViewMemory0 = null;
    cachedUint8ArrayMemory0 = null;

    return wasm;
  }

  function initSync(module) {
    if (wasm !== undefined) return wasm;

    if (
      typeof module !== 'undefined' &&
      Object.getPrototypeOf(module) === Object.prototype
    )
      ({ module } = module);
    else
      console.warn(
        'using deprecated parameters for `initSync()`; pass a single object instead'
      );

    const imports = __wbg_get_imports();

    __wbg_init_memory(imports);

    if (!(module instanceof WebAssembly.Module)) {
      module = new WebAssembly.Module(module);
    }

    const instance = new WebAssembly.Instance(module, imports);

    return __wbg_finalize_init(instance, module);
  }

  async function __wbg_init(module_or_path) {
    if (wasm !== undefined) return wasm;

    if (
      typeof module_or_path !== 'undefined' &&
      Object.getPrototypeOf(module_or_path) === Object.prototype
    )
      ({ module_or_path } = module_or_path);
    else
      console.warn(
        'using deprecated parameters for the initialization function; pass a single object instead'
      );

    if (typeof module_or_path === 'undefined') {
      module_or_path = new URL('program_basic_canvas_bg.wasm', import.meta.url);
    }
    const imports = __wbg_get_imports();

    if (
      typeof module_or_path === 'string' ||
      (typeof Request === 'function' && module_or_path instanceof Request) ||
      (typeof URL === 'function' && module_or_path instanceof URL)
    ) {
      module_or_path = fetch(module_or_path);
    }

    __wbg_init_memory(imports);

    const { instance, module } = await __wbg_load(
      await module_or_path,
      imports
    );

    return __wbg_finalize_init(instance, module);
  }

  return {
    init: __wbg_init,
    smart_nft_view_name,
    smart_nft_view_command,
    smart_nft_view_canvas,
    smart_nft_view_canvas_get_buffer,
    smart_nft_view_canvas_get_width,
    smart_nft_view_canvas_get_height,
    smart_nft_view_canvas_get_scale,
    smart_nft_view_canvas_get_tick
  };
}
