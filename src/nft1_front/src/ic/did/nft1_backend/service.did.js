export const idlFactory = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'supply_cap' : IDL.Opt(IDL.Tuple(IDL.Opt(IDL.Nat), IDL.Opt(IDL.Nat16))),
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
  });
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
  const Collection = IDL.Record({
    'supply_cap' : IDL.Tuple(IDL.Opt(IDL.Nat), IDL.Opt(IDL.Nat16)),
    'logo' : IDL.Opt(IDL.Tuple(ContentHeader, IDL.Vec(IDL.Nat8))),
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
  });
  const ExecArgs = IDL.Record({
    'id' : IDL.Nat,
    'command' : IDL.Vec(IDL.Nat8),
  });
  const AttrVal = IDL.Variant({
    'Num' : IDL.Int32,
    'Bool' : IDL.Bool,
    'Date' : IDL.Text,
    'RGBA' : IDL.Tuple(IDL.Nat8, IDL.Nat8, IDL.Nat8, IDL.Nat8),
    'Text' : IDL.Text,
    'Time' : IDL.Text,
    'DateTime' : IDL.Text,
    'Principal' : IDL.Text,
  });
  const Attr = IDL.Record({
    'id' : IDL.Nat32,
    'val' : AttrVal,
    'name' : IDL.Text,
  });
  const NftUpdate = IDL.Variant({
    'Attr' : Attr,
    'Melt' : IDL.Bool,
    'Memory' : IDL.Tuple(IDL.Nat8, IDL.Opt(IDL.Vec(IDL.Nat8))),
  });
  const NftExecErr = IDL.Variant({
    'ModuleNotFound' : IDL.Null,
    'NftDataNotFound' : IDL.Null,
  });
  const Result = IDL.Variant({
    'Ok' : IDL.Tuple(IDL.Vec(IDL.Nat8), IDL.Vec(NftUpdate)),
    'Err' : NftExecErr,
  });
  const GetExecArgs = IDL.Record({ 'id' : IDL.Nat });
  const ViewEngine = IDL.Variant({
    'Empty' : IDL.Null,
    'Command' : IDL.Null,
    'Canvas' : IDL.Null,
  });
  const Export = IDL.Variant({
    'Main' : IDL.Null,
    'User' : IDL.Text,
    'View' : ViewEngine,
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
  const Nft = IDL.Record({
    'id' : IDL.Nat,
    'melted' : IDL.Bool,
    'memory' : IDL.Vec(
      IDL.Tuple(IDL.Nat8, IDL.Tuple(IDL.Nat16, IDL.Vec(IDL.Nat8)))
    ),
    'attrs' : IDL.Vec(Attr),
    'contents' : IDL.Vec(IDL.Nat8),
    'executions' : IDL.Opt(IDL.Nat64),
    'contents_headers' : IDL.Vec(ContentHeader),
    'contents_byte_size' : IDL.Nat64,
    'modules' : IDL.Vec(IDL.Nat32),
  });
  const ListArgs = IDL.Record({ 'owner' : IDL.Principal });
  const MintParams = IDL.Record({
    'melted' : IDL.Opt(IDL.Bool),
    'attrs' : IDL.Vec(Attr),
    'contents' : IDL.Vec(IDL.Tuple(IDL.Text, IDL.Text)),
    'owner' : IDL.Text,
    'executions' : IDL.Opt(IDL.Nat64),
    'modules' : IDL.Vec(IDL.Tuple(IDL.Nat32, IDL.Opt(IDL.Text))),
  });
  const MintError = IDL.Variant({
    'NftSupplyCapReached' : IDL.Null,
    'InvalidPrincipal' : IDL.Null,
    'NftCreateError' : IDL.Null,
  });
  const MintResult = IDL.Variant({ 'Ok' : IDL.Nat, 'Err' : MintError });
  const ProgramCreate = IDL.Variant({
    'Wat' : IDL.Tuple(IDL.Text, IDL.Text),
    'Binary' : IDL.Tuple(IDL.Text, IDL.Vec(IDL.Nat8)),
  });
  const MintExecParams = IDL.Record({ 'program' : ProgramCreate });
  const MintExecResult = IDL.Variant({ 'Ok' : IDL.Nat32 });
  return IDL.Service({
    'collection_attrs' : IDL.Func([], [Collection], ['query']),
    'exec' : IDL.Func([ExecArgs], [Result], []),
    'get_exec' : IDL.Func([GetExecArgs], [], []),
    'get_exec_public' : IDL.Func(
        [GetExecArgs],
        [IDL.Opt(IDL.Vec(IDL.Tuple(Module, IDL.Vec(IDL.Nat8))))],
        [],
      ),
    'get_public' : IDL.Func([GetArgs], [IDL.Opt(Nft)], ['query']),
    'last_id' : IDL.Func([], [IDL.Nat], ['query']),
    'list' : IDL.Func([ListArgs], [], []),
    'list_public' : IDL.Func([ListArgs], [IDL.Vec(Nft)], ['query']),
    'mint' : IDL.Func([MintParams], [MintResult], []),
    'mint_exec' : IDL.Func([MintExecParams], [MintExecResult], []),
    'ver' : IDL.Func([], [IDL.Nat32], ['query']),
  });
};
export const init = ({ IDL }) => {
  const InitArgs = IDL.Record({
    'supply_cap' : IDL.Opt(IDL.Tuple(IDL.Opt(IDL.Nat), IDL.Opt(IDL.Nat16))),
    'logo' : IDL.Text,
    'name' : IDL.Text,
    'author' : IDL.Text,
    'symbol' : IDL.Text,
  });
  return [InitArgs];
};
