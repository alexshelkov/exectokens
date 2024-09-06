export default function create({ smart_nft_main_run }) {
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

  const CLOSURE_DTORS =
    typeof FinalizationRegistry === 'undefined'
      ? { register: () => {}, unregister: () => {} }
      : new FinalizationRegistry((state) => {
          wasm.__wbindgen_export_3.get(state.dtor)(state.a, state.b);
        });

  function makeMutClosure(arg0, arg1, dtor, f) {
    const state = { a: arg0, b: arg1, cnt: 1, dtor };
    const real = (...args) => {
      // First up with a closure we increment the internal reference
      // count. This ensures that the Rust closure environment won't
      // be deallocated while we're invoking it.
      state.cnt++;
      const a = state.a;
      state.a = 0;
      try {
        return f(a, state.b, ...args);
      } finally {
        if (--state.cnt === 0) {
          wasm.__wbindgen_export_3.get(state.dtor)(a, state.b);
          CLOSURE_DTORS.unregister(state);
        } else {
          state.a = a;
        }
      }
    };
    real.original = state;
    CLOSURE_DTORS.register(real, state, state);
    return real;
  }
  function __wbg_adapter_20(arg0, arg1, arg2) {
    wasm._dyn_core__ops__function__FnMut__A____Output___R_as_wasm_bindgen__closure__WasmClosure___describe__invoke__h307f2dd11aa8560b(
      arg0,
      arg1,
      addHeapObject(arg2)
    );
  }

  /**
   * @returns {number}
   */
  function smart_nft_view_canvas_get_buffer() {
    const ret = wasm.smart_nft_view_canvas_get_buffer();
    return ret >>> 0;
  }

  /**
   * @returns {number}
   */
  function smart_nft_view_canvas_get_width() {
    const ret = wasm.smart_nft_view_canvas_get_height();
    return ret >>> 0;
  }

  /**
   * @returns {number}
   */
  function smart_nft_view_canvas_get_height() {
    const ret = wasm.smart_nft_view_canvas_get_height();
    return ret >>> 0;
  }

  /**
   * @returns {number}
   */
  function smart_nft_view_canvas_get_scale() {
    const ret = wasm.smart_nft_view_canvas_get_scale();
    return ret;
  }

  /**
   * @returns {number}
   */
  function smart_nft_view_canvas_get_tick() {
    const ret = wasm.smart_nft_view_canvas_get_tick();
    return ret;
  }

  /**
   * @param {number} elapsed_ms
   * @returns {boolean}
   */
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
  /**
   * @param {Uint8Array} command
   * @returns {Promise<Uint8Array>}
   */
  function smart_nft_view_command(command) {
    const ptr0 = passArray8ToWasm0(command, wasm.__wbindgen_malloc);
    const len0 = WASM_VECTOR_LEN;
    const ret = wasm.smart_nft_view_command(ptr0, len0);
    return takeObject(ret);
  }

  /**
   * @returns {string}
   */
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

  /**
   * @param {Uint8Array} command
   * @returns {Uint8Array}
   */
  function smart_nft_main(command) {
    try {
      const retptr = wasm.__wbindgen_add_to_stack_pointer(-16);
      const ptr0 = passArray8ToWasm0(command, wasm.__wbindgen_malloc);
      const len0 = WASM_VECTOR_LEN;
      wasm.smart_nft_main(retptr, ptr0, len0);
      var r0 = getDataViewMemory0().getInt32(retptr + 4 * 0, true);
      var r1 = getDataViewMemory0().getInt32(retptr + 4 * 1, true);
      var v2 = getArrayU8FromWasm0(r0, r1).slice();
      wasm.__wbindgen_free(r0, r1 * 1, 1);
      return v2;
    } finally {
      wasm.__wbindgen_add_to_stack_pointer(16);
    }
  }

  function handleError(f, args) {
    try {
      return f.apply(this, args);
    } catch (e) {
      wasm.__wbindgen_exn_store(addHeapObject(e));
    }
  }
  function __wbg_adapter_42(arg0, arg1, arg2, arg3) {
    wasm.wasm_bindgen__convert__closures__invoke2_mut__h4d50a97fac60d907(
      arg0,
      arg1,
      addHeapObject(arg2),
      addHeapObject(arg3)
    );
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
    imports.wbg.__wbg_smartnftmainrun_ce08a810b8bdbd71 = function (arg0, arg1) {
      var v0 = getArrayU8FromWasm0(arg0, arg1).slice();
      wasm.__wbindgen_free(arg0, arg1 * 1, 1);
      const ret = smart_nft_main_run(v0);
      return addHeapObject(ret);
    };
    imports.wbg.__wbindgen_object_drop_ref = function (arg0) {
      takeObject(arg0);
    };
    imports.wbg.__wbindgen_cb_drop = function (arg0) {
      const obj = takeObject(arg0).original;
      if (obj.cnt-- == 1) {
        obj.a = 0;
        return true;
      }
      const ret = false;
      return ret;
    };
    imports.wbg.__wbg_queueMicrotask_48421b3cc9052b68 = function (arg0) {
      const ret = getObject(arg0).queueMicrotask;
      return addHeapObject(ret);
    };
    imports.wbg.__wbindgen_is_function = function (arg0) {
      const ret = typeof getObject(arg0) === 'function';
      return ret;
    };
    imports.wbg.__wbg_queueMicrotask_12a30234db4045d3 = function (arg0) {
      queueMicrotask(getObject(arg0));
    };
    imports.wbg.__wbg_newnoargs_76313bd6ff35d0f2 = function (arg0, arg1) {
      const ret = new Function(getStringFromWasm0(arg0, arg1));
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_call_1084a111329e68ce = function () {
      return handleError(function (arg0, arg1) {
        const ret = getObject(arg0).call(getObject(arg1));
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbindgen_object_clone_ref = function (arg0) {
      const ret = getObject(arg0);
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_self_3093d5d1f7bcb682 = function () {
      return handleError(function () {
        const ret = self.self;
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbg_window_3bcfc4d31bc012f8 = function () {
      return handleError(function () {
        const ret = window.window;
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbg_globalThis_86b222e13bdf32ed = function () {
      return handleError(function () {
        const ret = globalThis.globalThis;
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbg_global_e5a3fe56f8be9485 = function () {
      return handleError(function () {
        const ret = global.global;
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbindgen_is_undefined = function (arg0) {
      const ret = getObject(arg0) === undefined;
      return ret;
    };
    imports.wbg.__wbg_call_89af060b4e1523f2 = function () {
      return handleError(function (arg0, arg1, arg2) {
        const ret = getObject(arg0).call(getObject(arg1), getObject(arg2));
        return addHeapObject(ret);
      }, arguments);
    };
    imports.wbg.__wbg_new_b85e72ed1bfd57f9 = function (arg0, arg1) {
      try {
        var state0 = { a: arg0, b: arg1 };
        var cb0 = (arg0, arg1) => {
          const a = state0.a;
          state0.a = 0;
          try {
            return __wbg_adapter_42(a, state0.b, arg0, arg1);
          } finally {
            state0.a = a;
          }
        };
        const ret = new Promise(cb0);
        return addHeapObject(ret);
      } finally {
        state0.a = state0.b = 0;
      }
    };
    imports.wbg.__wbg_resolve_570458cb99d56a43 = function (arg0) {
      const ret = Promise.resolve(getObject(arg0));
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_then_95e6edc0f89b73b1 = function (arg0, arg1) {
      const ret = getObject(arg0).then(getObject(arg1));
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_then_876bb3c633745cc6 = function (arg0, arg1, arg2) {
      const ret = getObject(arg0).then(getObject(arg1), getObject(arg2));
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_buffer_b7b08af79b0b0974 = function (arg0) {
      const ret = getObject(arg0).buffer;
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_new_ea1883e1e5e86686 = function (arg0) {
      const ret = new Uint8Array(getObject(arg0));
      return addHeapObject(ret);
    };
    imports.wbg.__wbg_set_d1e79e2388520f18 = function (arg0, arg1, arg2) {
      getObject(arg0).set(getObject(arg1), arg2 >>> 0);
    };
    imports.wbg.__wbg_length_8339fcf5d8ecd12e = function (arg0) {
      const ret = getObject(arg0).length;
      return ret;
    };
    imports.wbg.__wbindgen_debug_string = function (arg0, arg1) {
      const ret = debugString(getObject(arg1));
      const ptr1 = passStringToWasm0(
        ret,
        wasm.__wbindgen_malloc,
        wasm.__wbindgen_realloc
      );
      const len1 = WASM_VECTOR_LEN;
      getDataViewMemory0().setInt32(arg0 + 4 * 1, len1, true);
      getDataViewMemory0().setInt32(arg0 + 4 * 0, ptr1, true);
    };
    imports.wbg.__wbindgen_throw = function (arg0, arg1) {
      throw new Error(getStringFromWasm0(arg0, arg1));
    };
    imports.wbg.__wbindgen_memory = function () {
      const ret = wasm.memory;
      return addHeapObject(ret);
    };
    imports.wbg.__wbindgen_uint8_array_new = function (arg0, arg1) {
      var v0 = getArrayU8FromWasm0(arg0, arg1).slice();
      wasm.__wbindgen_free(arg0, arg1 * 1, 1);
      const ret = v0;
      return addHeapObject(ret);
    };
    imports.wbg.__wbindgen_closure_wrapper58 = function (arg0, arg1, arg2) {
      const ret = makeMutClosure(arg0, arg1, 9, __wbg_adapter_20);
      return addHeapObject(ret);
    };

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

  function get_export_names() {
    return Object.keys(wasm);
  }

  return {
    init: __wbg_init,
    get_export_names,
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
