import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export interface Attr { 'val' : AttrVal, 'name' : string }
export type AttrVal = { 'Num' : number } |
  { 'Bool' : boolean } |
  { 'Date' : string } |
  { 'Text' : string } |
  { 'Time' : SystemTime } |
  { 'DateTime' : string } |
  { 'Principal' : Principal };
export interface Collection {
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
  'logo' : string,
  'name' : string,
  'author' : string,
  'symbol' : string,
  'program' : string,
}
export interface ListArgs { 'owner' : Principal }
export interface MintArgs {
  'melted' : [] | [boolean],
  'attrs' : Array<Attr>,
  'contents' : Array<[string, string]>,
  'owner' : Principal,
  'executions' : [] | [bigint],
  'modules_hidden' : [] | [Uint32Array | number[]],
  'refills' : [] | [bigint],
  'modules' : Uint32Array | number[],
}
export type MintError = { 'NftCreateError' : null };
export interface MintExecArgs { 'program' : string }
export interface Module {
  'id' : number,
  'exports' : Array<Export>,
  'name' : string,
  'imports' : Array<Import>,
}
export interface Nft {
  'id' : bigint,
  'melted' : boolean,
  'memory' : Array<[number, Uint8Array | number[]]>,
  'attrs' : Array<Attr>,
  'contents' : Uint8Array | number[],
  'executions' : [] | [bigint],
  'contents_headers' : Array<ContentHeader>,
  'contents_byte_size' : bigint,
  'refills' : [] | [bigint],
  'modules' : Uint32Array | number[],
}
export type Result = { 'Ok' : bigint } |
  { 'Err' : MintError };
export interface SystemTime {
  'nanos_since_epoch' : number,
  'secs_since_epoch' : bigint,
}
export type ViewEngine = { 'Empty' : null } |
  { 'Command' : null } |
  { 'Canvas' : null };
export interface _SERVICE {
  'collection_attrs' : ActorMethod<[], Collection>,
  'exec' : ActorMethod<[ExecArgs], [] | [Uint8Array | number[]]>,
  'get_exec' : ActorMethod<[GetExecArgs], undefined>,
  'get_exec_public' : ActorMethod<
    [GetExecArgs],
    [] | [Array<[Module, Uint8Array | number[]]>]
  >,
  'get_public' : ActorMethod<[GetArgs], [] | [Nft]>,
  'last_id' : ActorMethod<[], bigint>,
  'list' : ActorMethod<[ListArgs], undefined>,
  'list_public' : ActorMethod<[ListArgs], Array<Nft>>,
  'mint' : ActorMethod<[MintArgs], Result>,
  'mint_exec' : ActorMethod<[MintExecArgs], number>,
  'mint_stream' : ActorMethod<[{}], undefined>,
  'ver' : ActorMethod<[], number>,
}
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
