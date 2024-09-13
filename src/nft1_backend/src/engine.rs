use wasmi::*;

thread_local! {
  pub static ENGINE: Engine = Engine::default();
}

pub struct StoreState {
    calls: Vec<u8>
}

pub type WasmiStore = Store<StoreState>;
pub type WasmiLinker = Linker<StoreState>;

pub fn with_wasmi<R>(f: impl FnOnce(&Engine, &mut WasmiStore, &mut WasmiLinker) -> R) -> R {
    ENGINE.with(|engine| {
        let mut store = WasmiStore::new(&engine, StoreState { calls: vec![] });
        let mut linker = WasmiLinker::new(&engine);

        f(engine, &mut store, &mut linker)
    })
}
