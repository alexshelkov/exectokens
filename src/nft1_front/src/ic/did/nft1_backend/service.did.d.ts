import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export interface Attr { 'val' : AttrVal, 'name' : string }
export type AttrVal = { 'Num' : number } |
  { 'Bool' : boolean } |
  { 'Date' : string } |
  { 'Text' : string } |
  { 'Time' : string } |
  { 'DateTime' : string } |
  { 'Principal' : Principal };
export interface CollectionState {
  'executions' : [] | [bigint],
  'logo' : string,
  'name' : string,
  'author' : string,
  'symbol' : string,
  'refils' : [] | [bigint],
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
export type Export = { 'Limits' : null } |
  { 'Main' : null } |
  { 'User' : string } |
  { 'View' : ViewEngine };
export interface GetArgs { 'id' : bigint }
export interface InitArgs {
  'executions' : [] | [bigint],
  'logo' : string,
  'name' : string,
  'author' : string,
  'symbol' : string,
  'program' : string,
  'refils' : [] | [bigint],
}
export interface ListArgs { 'owner' : Principal }
export interface MintArgs {
  'nft_modules_hidden' : [] | [BigUint64Array | bigint[]],
  'nft_contents' : Uint8Array | number[],
  'nft_attrs' : Array<Attr>,
  'nft_owner' : Principal,
  'nft_contents_headers' : Array<ContentHeader>,
  'nft_modules' : BigUint64Array | bigint[],
  'nft_accuires' : [] | [bigint],
}
export interface MintExecArgs { 'program' : string }
export interface Module {
  'id' : bigint,
  'exports' : Array<Export>,
  'name' : string,
}
export interface Nft {
  'id' : bigint,
  'attrs' : Array<Attr>,
  'contents' : Uint8Array | number[],
  'executions' : [] | [bigint],
  'contents_headers' : Array<ContentHeader>,
  'contents_byte_size' : bigint,
  'modules' : BigUint64Array | bigint[],
  'accuires' : [] | [bigint],
  'refils' : [] | [bigint],
}
export type ViewEngine = { 'Empty' : null } |
  { 'Command' : null } |
  { 'Canvas' : null };
export interface _SERVICE {
  'accuire' : ActorMethod<[{}], undefined>,
  'collection_attrs' : ActorMethod<[], CollectionState>,
  'exec' : ActorMethod<[ExecArgs], [] | [Uint8Array | number[]]>,
  'get' : ActorMethod<[GetArgs], undefined>,
  'get_exec' : ActorMethod<[GetArgs], undefined>,
  'get_exec_public' : ActorMethod<
    [GetArgs],
    [] | [Array<[Module, Uint8Array | number[]]>]
  >,
  'get_exec_public_stream' : ActorMethod<[GetArgs], undefined>,
  'get_public' : ActorMethod<[GetArgs], [] | [Nft]>,
  'last_id' : ActorMethod<[], bigint>,
  'list' : ActorMethod<[ListArgs], undefined>,
  'list_public' : ActorMethod<[ListArgs], Array<Nft>>,
  'mint' : ActorMethod<[MintArgs], bigint>,
  'mint_exec' : ActorMethod<[MintExecArgs], undefined>,
  'mint_stream' : ActorMethod<[{}], undefined>,
  'ver' : ActorMethod<[], number>,
  'wasm' : ActorMethod<[], Array<string>>,
}
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
