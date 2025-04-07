import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export interface Attr { 'id' : number, 'val' : AttrVal, 'name' : string }
export type AttrVal = { 'Num' : number } |
  { 'Bool' : boolean } |
  { 'Date' : string } |
  { 'RGBA' : [number, number, number, number] } |
  { 'Text' : string } |
  { 'Time' : string } |
  { 'DateTime' : string } |
  { 'Principal' : string };
export interface Collection {
  'supply_cap' : [[] | [bigint], [] | [number]],
  'logo' : [] | [[ContentHeader, Uint8Array | number[]]],
  'name' : string,
  'author' : string,
  'symbol' : string,
}
export interface ContentHeader {
  'end' : number,
  'mime' : string,
  'role' : ContentRole,
  'start' : number,
}
export type ContentRole = { 'Preview' : null } |
  { 'Logo' : null } |
  { 'User' : string };
export interface ExecArgs { 'id' : bigint, 'command' : Uint8Array | number[] }
export type Export = { 'Main' : null } |
  { 'User' : string } |
  { 'View' : ViewEngine };
export interface GetArgs { 'id' : bigint, 'owner' : Principal }
export interface GetExecArgs { 'id' : bigint }
export type Import = {
    'ImportFn' : {
      'name' : string,
      'params' : Array<string>,
      'returns' : Array<string>,
    }
  } |
  { 'Import' : string };
export interface InitArgs {
  'supply_cap' : [] | [[[] | [bigint], [] | [number]]],
  'logo' : string,
  'name' : string,
  'author' : string,
  'symbol' : string,
}
export interface ListArgs { 'owner' : Principal }
export type MintError = { 'NftSupplyCapReached' : null } |
  { 'InvalidPrincipal' : null } |
  { 'NftCreateError' : null };
export interface MintExecParams { 'program' : ProgramCreate }
export type MintExecResult = { 'Ok' : number };
export interface MintParams {
  'melted' : [] | [boolean],
  'attrs' : Array<Attr>,
  'contents' : Array<[string, string]>,
  'owner' : string,
  'executions' : [] | [bigint],
  'modules' : Array<[number, [] | [string]]>,
}
export type MintResult = { 'Ok' : bigint } |
  { 'Err' : MintError };
export interface Module {
  'id' : number,
  'exports' : Array<Export>,
  'name' : string,
  'imports' : Array<Import>,
}
export interface Nft {
  'id' : bigint,
  'melted' : boolean,
  'memory' : Array<[number, [number, Uint8Array | number[]]]>,
  'attrs' : Array<Attr>,
  'contents' : Uint8Array | number[],
  'executions' : [] | [bigint],
  'contents_headers' : Array<ContentHeader>,
  'contents_byte_size' : bigint,
  'modules' : Uint32Array | number[],
}
export type NftExecErr = { 'ModuleNotFound' : null } |
  { 'NftDataNotFound' : null };
export type NftUpdate = { 'Attr' : Attr } |
  { 'Melt' : boolean } |
  { 'Memory' : [number, [] | [Uint8Array | number[]]] };
export type ProgramCreate = { 'Wat' : [string, string] } |
  { 'Binary' : [string, Uint8Array | number[]] };
export type Result = { 'Ok' : [Uint8Array | number[], Array<NftUpdate>] } |
  { 'Err' : NftExecErr };
export type ViewEngine = { 'Empty' : null } |
  { 'Command' : null } |
  { 'Canvas' : null };
export interface _SERVICE {
  'collection_attrs' : ActorMethod<[], Collection>,
  'exec' : ActorMethod<[ExecArgs], Result>,
  'get_exec' : ActorMethod<[GetExecArgs], undefined>,
  'get_exec_public' : ActorMethod<
    [GetExecArgs],
    [] | [Array<[Module, Uint8Array | number[]]>]
  >,
  'get_public' : ActorMethod<[GetArgs], [] | [Nft]>,
  'last_id' : ActorMethod<[], bigint>,
  'list' : ActorMethod<[ListArgs], undefined>,
  'list_public' : ActorMethod<[ListArgs], Array<Nft>>,
  'mint' : ActorMethod<[MintParams], MintResult>,
  'mint_exec' : ActorMethod<[MintExecParams], MintExecResult>,
  'ver' : ActorMethod<[], number>,
}
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
