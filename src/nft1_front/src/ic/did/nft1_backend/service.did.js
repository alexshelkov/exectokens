export const idlFactory = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'executions' : IDL.Opt(IDL.Nat64),
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
    'program' : IDL.Text,
    'refils' : IDL.Opt(IDL.Nat64),
  });
  const CollectionState = IDL.Record({
    'executions' : IDL.Opt(IDL.Nat64),
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
    'refils' : IDL.Opt(IDL.Nat64),
  });
  const ExecArgs = IDL.Record({
    'id' : IDL.Nat,
    'command' : IDL.Vec(IDL.Nat8),
  });
  const GetArgs = IDL.Record({ 'id' : IDL.Nat });
  const ViewEngine = IDL.Variant({
    'Empty' : IDL.Null,
    'Command' : IDL.Null,
    'Canvas' : IDL.Null,
  });
  const Export = IDL.Variant({
    'Limits' : IDL.Null,
    'Main' : IDL.Null,
    'User' : IDL.Text,
    'View' : ViewEngine,
  });
  const Module = IDL.Record({
    'id' : IDL.Nat64,
    'exports' : IDL.Vec(Export),
    'name' : IDL.Text,
  });
  const AttrVal = IDL.Variant({
    'Num' : IDL.Int32,
    'Bool' : IDL.Bool,
    'Date' : IDL.Text,
    'Text' : IDL.Text,
    'Time' : IDL.Text,
    'DateTime' : IDL.Text,
    'Principal' : IDL.Principal,
  });
  const Attr = IDL.Record({ 'val' : AttrVal, 'name' : IDL.Text });
  const ContentRole = IDL.Variant({
    'Preview' : IDL.Null,
    'Logo' : IDL.Null,
    'User' : IDL.Text,
  });
  const ContentHeader = IDL.Record({
    'end' : IDL.Nat32,
    'mime' : IDL.Text,
    'role' : ContentRole,
    'start' : IDL.Nat32,
  });
  const Nft = IDL.Record({
    'id' : IDL.Nat,
    'attrs' : IDL.Vec(Attr),
    'contents' : IDL.Vec(IDL.Nat8),
    'executions' : IDL.Opt(IDL.Nat),
    'contents_headers' : IDL.Vec(ContentHeader),
    'contents_byte_size' : IDL.Nat64,
    'modules' : IDL.Vec(IDL.Nat64),
    'accuires' : IDL.Opt(IDL.Nat64),
    'refils' : IDL.Opt(IDL.Nat),
  });
  const ListArgs = IDL.Record({ 'owner' : IDL.Principal });
  const MintArgs = IDL.Record({
    'nft_modules_hidden' : IDL.Opt(IDL.Vec(IDL.Nat64)),
    'nft_contents' : IDL.Vec(IDL.Nat8),
    'nft_attrs' : IDL.Vec(Attr),
    'nft_owner' : IDL.Principal,
    'nft_contents_headers' : IDL.Vec(ContentHeader),
    'nft_modules' : IDL.Vec(IDL.Nat64),
    'nft_accuires' : IDL.Opt(IDL.Nat64),
  });
  const MintExecArgs = IDL.Record({ 'program' : IDL.Text });
  return IDL.Service({
    'accuire' : IDL.Func([IDL.Record({})], [], []),
    'collection_attrs' : IDL.Func([], [CollectionState], ['query']),
    'exec' : IDL.Func([ExecArgs], [IDL.Opt(IDL.Vec(IDL.Nat8))], []),
    'get' : IDL.Func([GetArgs], [], []),
    'get_exec' : IDL.Func([GetArgs], [], []),
    'get_exec_public' : IDL.Func(
        [GetArgs],
        [IDL.Opt(IDL.Vec(IDL.Tuple(Module, IDL.Vec(IDL.Nat8))))],
        [],
      ),
    'get_exec_public_stream' : IDL.Func([GetArgs], [], []),
    'get_public' : IDL.Func([GetArgs], [IDL.Opt(Nft)], []),
    'last_id' : IDL.Func([], [IDL.Nat], ['query']),
    'list' : IDL.Func([ListArgs], [], []),
    'list_public' : IDL.Func([ListArgs], [IDL.Vec(Nft)], []),
    'mint' : IDL.Func([MintArgs], [IDL.Nat], []),
    'mint_exec' : IDL.Func([MintExecArgs], [], []),
    'mint_stream' : IDL.Func([IDL.Record({})], [], []),
    'ver' : IDL.Func([], [IDL.Nat32], ['query']),
    'wasm' : IDL.Func([], [IDL.Vec(IDL.Text)], ['query']),
  });
};
export const init = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'executions' : IDL.Opt(IDL.Nat64),
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
    'program' : IDL.Text,
    'refils' : IDL.Opt(IDL.Nat64),
  });
  return [InitArgs];
};
