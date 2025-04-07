use crate::nft::NftUpdate;
use wasmi::*;

thread_local! {
  pub static ENGINE: Engine = Engine::default();
}

pub struct StoreState {
    pub nfts_updates: Vec<NftUpdate>,
}

pub type WasmiStore = Store<StoreState>;
pub type WasmiLinker = Linker<StoreState>;

pub fn with_wasmi<R>(f: impl FnOnce(&Engine, &mut WasmiStore, &mut WasmiLinker) -> R) -> R {
    ENGINE.with(|engine| {
        let mut store = WasmiStore::new(
            &engine,
            StoreState {
                nfts_updates: vec![],
            },
        );
        let mut linker = WasmiLinker::new(&engine);

        f(engine, &mut store, &mut linker)
    })
}

pub fn wasmi_exec_fn<Params: WasmParams, Results: WasmResults>(
    fn_name: &str,
    instance: Instance,
    store: &mut WasmiStore,
    params: Params,
) -> Results {
    let func = instance
        .get_func(&mut *store, fn_name)
        .expect(&format!("{fn_name} failed to find"))
        .typed::<Params, Results>(&mut *store)
        .expect(&format!("{fn_name} failed to type"));

    func.call(&mut *store, params)
        .expect(&format!("{fn_name} failed to run"))
}

pub fn wasmi_exec_caller_fn<Params: WasmParams, Results: WasmResults>(
    fn_name: &str,
    caller: &mut Caller<'_, StoreState>,
    params: Params,
) -> Results {
    let func = caller
        .get_export(fn_name)
        .expect(&format!("{fn_name} failed to find"))
        .into_func()
        .expect(&format!("{fn_name} failed to unwrap"))
        .typed::<Params, Results>(caller.as_context())
        .expect(&format!("{fn_name} failed to type"));

    func.call(caller.as_context_mut(), params)
        .expect(&format!("{fn_name} failed to run"))
}
