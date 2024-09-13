export const idlFactory = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
    'program' : IDL.Text,
  });
  const AcquireArgs = IDL.Record({ 'id' : IDL.Nat });
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
  const CollectionState = IDL.Record({
    'logo' : IDL.Opt(IDL.Tuple(ContentHeader, IDL.Vec(IDL.Nat8))),
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
  });
  const ExecArgs = IDL.Record({
    'id' : IDL.Nat,
    'command' : IDL.Vec(IDL.Nat8),
  });
  const ViewEngine = IDL.Variant({
    'Empty' : IDL.Null,
    'Command' : IDL.Null,
    'Canvas' : IDL.Null,
  });
  const Export = IDL.Variant({
    'Main' : IDL.Null,
    'User' : IDL.Text,
    'View' : ViewEngine,
    'Acquire' : IDL.Record({}),
  });
  const Import = IDL.Variant({
    'ImportFn' : IDL.Record({
      'name' : IDL.Text,
      'params' : IDL.Vec(IDL.Text),
      'returns' : IDL.Vec(IDL.Text),
    }),
    'Import' : IDL.Text,
  });
  const Module = IDL.Record({
    'id' : IDL.Nat32,
    'exports' : IDL.Vec(Export),
    'name' : IDL.Text,
    'imports' : IDL.Vec(Import),
  });
  const GetArgs = IDL.Record({ 'id' : IDL.Nat, 'owner' : IDL.Principal });
  const SystemTime = IDL.Record({
    'nanos_since_epoch' : IDL.Nat32,
    'secs_since_epoch' : IDL.Nat64,
  });
  const AttrVal = IDL.Variant({
    'Num' : IDL.Int32,
    'Bool' : IDL.Bool,
    'Date' : IDL.Text,
    'Text' : IDL.Text,
    'Time' : SystemTime,
    'DateTime' : IDL.Text,
    'Principal' : IDL.Principal,
  });
  const Attr = IDL.Record({ 'val' : AttrVal, 'name' : IDL.Text });
  const Nft = IDL.Record({
    'id' : IDL.Nat,
    'memory' : IDL.Vec(IDL.Tuple(IDL.Nat8, IDL.Vec(IDL.Nat8))),
    'attrs' : IDL.Vec(Attr),
    'contents' : IDL.Vec(IDL.Nat8),
    'executions' : IDL.Opt(IDL.Nat),
    'acquires' : IDL.Opt(IDL.Nat64),
    'contents_headers' : IDL.Vec(ContentHeader),
    'contents_byte_size' : IDL.Nat64,
    'refills' : IDL.Opt(IDL.Nat),
    'modules' : IDL.Vec(IDL.Nat32),
  });
  const ListArgs = IDL.Record({ 'owner' : IDL.Principal });
  const MintArgs = IDL.Record({
    'attrs' : IDL.Vec(Attr),
    'contents' : IDL.Vec(IDL.Tuple(IDL.Text, IDL.Text)),
    'owner' : IDL.Principal,
    'executions' : IDL.Opt(IDL.Nat64),
    'modules_hidden' : IDL.Opt(IDL.Vec(IDL.Nat32)),
    'acquired' : IDL.Opt(IDL.Bool),
    'refills' : IDL.Opt(IDL.Nat64),
    'modules' : IDL.Vec(IDL.Nat32),
  });
  const MintError = IDL.Variant({ 'NftDataCreateError' : IDL.Null });
  const Result = IDL.Variant({ 'Ok' : IDL.Nat, 'Err' : MintError });
  const MintExecArgs = IDL.Record({ 'program' : IDL.Text });
  return IDL.Service({
    'acquire' : IDL.Func([AcquireArgs], [IDL.Opt(IDL.Null)], []),
    'collection_attrs' : IDL.Func([], [CollectionState], ['query']),
    'exec' : IDL.Func([ExecArgs], [IDL.Opt(IDL.Vec(IDL.Nat8))], []),
    'get_exec' : IDL.Func([AcquireArgs], [], []),
    'get_exec_public' : IDL.Func(
        [AcquireArgs],
        [IDL.Opt(IDL.Vec(IDL.Tuple(Module, IDL.Vec(IDL.Nat8))))],
        [],
      ),
    'get_public' : IDL.Func([GetArgs], [IDL.Opt(Nft)], ['query']),
    'last_id' : IDL.Func([], [IDL.Nat], ['query']),
    'list' : IDL.Func([ListArgs], [], []),
    'list_public' : IDL.Func([ListArgs], [IDL.Vec(Nft)], ['query']),
    'mint' : IDL.Func([MintArgs], [Result], []),
    'mint_exec' : IDL.Func([MintExecArgs], [IDL.Nat32], []),
    'mint_stream' : IDL.Func([IDL.Record({})], [], []),
    'ver' : IDL.Func([], [IDL.Nat32], ['query']),
  });
};
export const init = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
    'program' : IDL.Text,
  });
  return [InitArgs];
};
