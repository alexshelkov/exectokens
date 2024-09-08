import { default as create } from '@/wasm/interfaces/smart_nft';
import type { ModuleImports as SmartNftModuleImports } from '@/wasm/interfaces/smart_nft';
import { Nft1Module } from '@/ic/did';

export type {
  ModuleInstance as SmartNftModuleInstance,
  ModuleImports as SmartNftModuleImports
} from '@/wasm/interfaces/smart_nft';

interface SystemFuncs {
  takeObject: any;
  getObject: any;
  addHeapObject: any;
  getArrayU8FromWasm0: any;
  getStringFromWasm0: any;
  debugString: any;
  passStringToWasm0: any;
  getDataViewMemory0: any;
  WASM_VECTOR_LEN: any;
  handleError: any;
}

const createStaticImports = (
  wasmGet: any,
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
  }: SystemFuncs,
  imports: { wbg: Record<string, any> }
) => {
  imports.wbg.__wbindgen_object_drop_ref = function (arg0: any) {
    takeObject(arg0);
  };
  imports.wbg.__wbindgen_cb_drop = function (arg0: any) {
    const obj = takeObject(arg0).original;
    if (obj.cnt-- == 1) {
      obj.a = 0;
      return true;
    }
    const ret = false;
    return ret;
  };
  imports.wbg.__wbindgen_is_function = function (arg0: any) {
    const ret = typeof getObject(arg0) === 'function';
    return ret;
  };
  imports.wbg.__wbindgen_object_clone_ref = function (arg0: any) {
    const ret = getObject(arg0);
    return addHeapObject(ret);
  };
  imports.wbg.__wbindgen_is_undefined = function (arg0: any) {
    const ret = getObject(arg0) === undefined;
    return ret;
  };
  imports.wbg.__wbindgen_uint8_array_new = function (arg0: any, arg1: any) {
    var v0 = getArrayU8FromWasm0(arg0, arg1).slice();
    wasmGet().__wbindgen_free(arg0, arg1 * 1, 1);
    const ret = v0;
    return addHeapObject(ret);
  };
  imports.wbg.__wbindgen_debug_string = function (arg0: any, arg1: any) {
    const ret = debugString(getObject(arg1));
    const ptr1 = passStringToWasm0(
      ret,
      wasmGet().__wbindgen_malloc,
      wasmGet().__wbindgen_realloc
    );
    const len1 = WASM_VECTOR_LEN;
    getDataViewMemory0().setInt32(arg0 + 4 * 1, len1, true);
    getDataViewMemory0().setInt32(arg0 + 4 * 0, ptr1, true);
  };
  imports.wbg.__wbindgen_throw = function (arg0: any, arg1: any) {
    throw new Error(getStringFromWasm0(arg0, arg1));
  };
  imports.wbg.__wbindgen_memory = function () {
    const ret = wasmGet().memory;
    return addHeapObject(ret);
  };
};

const getName = (exports: Nft1Module['exports'], pattern: RegExp) => {
  let name = '';

  exports.some((exp) => {
    if ('User' in exp) {
      if (exp.User.match(pattern)) {
        name = exp.User;

        return true;
      }
    }

    return false;
  });

  return name;
};

const createSimpleImports = (
  exports: Nft1Module['exports'],
  requiredImports: Nft1Module['imports'],
  providedImports: SmartNftModuleImports
) => {
  return (
    wasmGet: any,
    {
      getArrayU8FromWasm0,
      addHeapObject,
      handleError,
      getObject,
      getStringFromWasm0
    }: SystemFuncs,
    imports: { wbg: Record<string, any> }
  ) => {
    const closures__invoke2_mut = getName(
      exports,
      /wasm_bindgen__convert__closures__invoke2_mut__/
    );
    const dyn_core__ops__function = getName(
      exports,
      /dyn_core__ops__function__FnMut/
    );
    const wbindgen_export = getName(exports, /wbindgen_export/);

    function __wbg_adapter_20(arg0: any, arg1: any, arg2: any) {
      if (dyn_core__ops__function) {
        wasmGet()[dyn_core__ops__function](arg0, arg1, addHeapObject(arg2));
      }
    }

    function __wbg_adapter_34(arg0: any, arg1: any, arg2: any, arg3: any) {
      if (closures__invoke2_mut) {
        wasmGet()[closures__invoke2_mut](
          arg0,
          arg1,
          addHeapObject(arg2),
          addHeapObject(arg3)
        );
      }
    }

    const CLOSURE_DTORS =
      // @ts-ignore
      typeof FinalizationRegistry === 'undefined'
        ? { register: () => {}, unregister: () => {} }
        // @ts-ignore
        : new FinalizationRegistry((state) => {
            wasmGet()[wbindgen_export].get(state.dtor)(state.a, state.b);
          });

    function makeMutClosure(arg0: any, arg1: any, dtor: any, f: any) {
      const state = { a: arg0, b: arg1, cnt: 1, dtor };
      const real = (...args: any) => {
        state.cnt++;
        const a = state.a;
        state.a = 0;
        try {
          return f(a, state.b, ...args);
        } finally {
          if (--state.cnt === 0) {
            wasmGet()[wbindgen_export].get(state.dtor)(a, state.b);
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

    const patterns = [
      {
        check: /^__wbg_smartnftmainrunasync_/,
        fn(arg0: any, arg1: any) {
          let v0 = getArrayU8FromWasm0(arg0, arg1).slice();
          wasmGet().__wbindgen_free(arg0, arg1 * 1, 1);
          const ret = providedImports.smart_nft_main_run_async!(v0);
          return addHeapObject(ret);
        }
      },
      {
        check: /__wbg_globalThis_/,
        fn() {
          return handleError(function () {
            const ret = globalThis.globalThis;
            return addHeapObject(ret);
          }, arguments);
        }
      },
      {
        check: /__wbg_global_/,
        fn() {
          return handleError(function () {
            const ret = global.global;
            return addHeapObject(ret);
          }, arguments);
        }
      },
      {
        check: /__wbg_new_/,
        fn(arg0: any) {
          const ret = new Uint8Array(getObject(arg0));
          return addHeapObject(ret);
        },
        params: 1,
        returns: 1
      },
      {
        check: /__wbg_set_/,
        fn(arg0: any, arg1: any, arg2: any) {
          getObject(arg0).set(getObject(arg1), arg2 >>> 0);
        }
      },
      {
        check: /__wbg_length_/,
        fn(arg0: any) {
          const ret = getObject(arg0).length;
          return ret;
        }
      },
      {
        check: /__wbg_buffer_/,
        fn(arg0: any) {
          const ret = getObject(arg0).buffer;
          return addHeapObject(ret);
        }
      },
      {
        check: /__wbg_resolve_/,
        fn(arg0: any) {
          const ret = Promise.resolve(getObject(arg0));
          return addHeapObject(ret);
        }
      },
      {
        check: /__wbg_newnoargs_/,
        fn(arg0: any, arg1: any) {
          const ret = new Function(getStringFromWasm0(arg0, arg1));
          return addHeapObject(ret);
        }
      },
      {
        check: /__wbg_self_/,
        fn() {
          return handleError(function () {
            const ret = self.self;
            return addHeapObject(ret);
          }, arguments);
        }
      },
      {
        check: /__wbg_window_/,
        fn() {
          return handleError(function () {
            const ret = window.window;
            return addHeapObject(ret);
          }, arguments);
        }
      },
      {
        check: /__wbg_call_/,
        fn() {
          return handleError(function (arg0: any, arg1: any) {
            const ret = getObject(arg0).call(getObject(arg1));
            return addHeapObject(ret);
          }, arguments);
        },
        params: 2,
        returns: 1
      },
      {
        check: /__wbg_call_/,
        fn() {
          return handleError(function (arg0: any, arg1: any, arg2: any) {
            const ret = getObject(arg0).call(getObject(arg1), getObject(arg2));
            return addHeapObject(ret);
          }, arguments);
        },
        params: 3,
        returns: 1
      },
      {
        check: /__wbg_queueMicrotask_/,
        fn(arg0: any) {
          const ret = getObject(arg0).queueMicrotask;
          return addHeapObject(ret);
        },
        params: 1,
        returns: 1
      },
      {
        check: /__wbg_queueMicrotask_/,
        fn(arg0: any) {
          queueMicrotask(getObject(arg0));
        },
        params: 1,
        returns: 0
      },
      {
        check: /__wbg_then_/,
        fn(arg0: any, arg1: any) {
          const ret = getObject(arg0).then(getObject(arg1));
          return addHeapObject(ret);
        },
        params: 2,
        returns: 1
      },
      {
        check: /__wbg_then_/,
        fn(arg0: any, arg1: any, arg2: any) {
          const ret = getObject(arg0).then(getObject(arg1), getObject(arg2));
          return addHeapObject(ret);
        },
        params: 3,
        returns: 1
      },
      {
        check: /__wbg_new_/,
        fn(arg0: any, arg1: any) {
          try {
            var state0: any = { a: arg0, b: arg1 };
            var cb0 = (arg0: any, arg1: any) => {
              const a = state0.a;
              state0.a = 0;
              try {
                return __wbg_adapter_34(a, state0.b, arg0, arg1);
              } finally {
                state0.a = a;
              }
            };
            const ret = new Promise(cb0);
            return addHeapObject(ret);
          } finally {
            state0.a = state0.b = 0;
          }
        },
        params: 2,
        returns: 1
      },
      {
        check: /_wbindgen_closure_/,
        fn(arg0: any, arg1: any) {
          const ret = makeMutClosure(arg0, arg1, 9, __wbg_adapter_20);
          return addHeapObject(ret);
        }
      }
    ];

    for (let pattern of patterns) {
      for (let imp of requiredImports) {
        if (!('ImportFn' in imp)) {
          continue;
        }

        const { name, params, returns } = imp.ImportFn;

        if (name.match(pattern.check)) {
          if (
            (pattern.params === undefined ||
              pattern.params === params.length) &&
            (pattern.returns === undefined ||
              pattern.returns === returns.length)
          ) {
            imports.wbg[name] = pattern.fn;

            console.log(name, params.length, returns.length);
          }
        }
      }
    }
  };
};

export const createSmartNftInstance = (
  exports: Nft1Module['exports'],
  requiredImports: Nft1Module['imports'],
  providedImports: SmartNftModuleImports
) => {
  return create(
    createStaticImports,
    createSimpleImports(exports, requiredImports, providedImports)
  );
};
