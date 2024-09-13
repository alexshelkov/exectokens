/* tslint:disable */
/* eslint-disable */

type InitInput =
  | RequestInfo
  | URL
  | Response
  | BufferSource
  | WebAssembly.Module;

export interface InitOutput {
  readonly memory: WebAssembly.Memory;
  readonly __wbindgen_add_to_stack_pointer: (a: number) => number;
  readonly __wbindgen_malloc: (a: number, b: number) => number;
  readonly __wbindgen_realloc: (
    a: number,
    b: number,
    c: number,
    d: number
  ) => number;
  readonly __wbindgen_free: (a: number, b: number, c: number) => void;
}

export type SyncInitInput = BufferSource | WebAssembly.Module;
/**
 * Instantiates the given `module`, which can either be bytes or
 * a precompiled `WebAssembly.Module`.
 *
 * @param {{ module: SyncInitInput }} module - Passing `SyncInitInput` directly is deprecated.
 *
 * @returns {InitOutput}
 */
function initSync(
  module: { module: SyncInitInput } | SyncInitInput
): InitOutput;

/**
 * If `module_or_path` is {RequestInfo} or {URL}, makes a request and
 * for everything else, calls `WebAssembly.instantiate` directly.
 *
 * @param {{ module_or_path: InitInput | Promise<InitInput> }} module_or_path - Passing `InitInput` directly is deprecated.
 *
 * @returns {Promise<InitOutput>}
 */
function __wbg_init(
  module_or_path?:
    | { module_or_path: InitInput | Promise<InitInput> }
    | InitInput
    | Promise<InitInput>
): Promise<InitOutput>;

/**
 * @returns {number}
 */
function smart_nft_view_canvas_get_buffer(): number;

/**
 * @returns {number}
 */
function smart_nft_view_canvas_get_width(): number;

/**
 * @returns {number}
 */
function smart_nft_view_canvas_get_height(): number;

/**
 * @returns {number}
 */
function smart_nft_view_canvas_get_scale(): number;

/**
 * @returns {number}
 */
function smart_nft_view_canvas_get_tick(): number;

/**
 * @param {number} elapsed_ms
 * @returns {boolean}
 */
function smart_nft_view_canvas(elapsed_ms: number): boolean;

// /**
//  * @param {Uint8Array} command
//  * @returns {Promise<Uint8Array>}
//  */
// function smart_nft_view_command(command: Uint8Array): Promise<Uint8Array>;

/**
* @param {Uint8Array} command
* @returns {Uint8Array}
*/
export function smart_nft_view_command(command: Uint8Array): Uint8Array;

/**
 * @returns {string}
 */
function smart_nft_view_name(): string;

// ------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------
// Manually created
// ------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------------------------------------

export type ModuleImports = {
  smart_nft_main_run_async?: (program: Uint8Array) => Promise<Uint8Array>;
};

export type ModuleInstance = {
  init: typeof __wbg_init;
  smart_nft_view_name: typeof smart_nft_view_name;
  smart_nft_view_command: typeof smart_nft_view_command;
  smart_nft_view_canvas_get_buffer: typeof smart_nft_view_canvas_get_buffer;
  smart_nft_view_canvas_get_width: typeof smart_nft_view_canvas_get_width;
  smart_nft_view_canvas_get_height: typeof smart_nft_view_canvas_get_height;
  smart_nft_view_canvas_get_scale: typeof smart_nft_view_canvas_get_scale;
  smart_nft_view_canvas_get_tick: typeof smart_nft_view_canvas_get_tick;
  smart_nft_view_canvas: typeof smart_nft_view_canvas;
};

export default function create(
  createStaticImports: any,
  createSimpleImports: any,
): ModuleInstance;
