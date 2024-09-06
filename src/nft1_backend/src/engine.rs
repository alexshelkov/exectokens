use crate::attrs::{Attr, AttrVal};
use crate::headers::ContentHeader;
use std::time::UNIX_EPOCH;
use std::{borrow::Cow, cell::RefCell};
use wasmi::*;

thread_local! {
  pub static ENGINE: Engine = Engine::default();
  pub static STORE: RefCell<Store<()>> = RefCell::new(ENGINE.with(|engine| {
      Store::new(&engine, ())
  }));
  pub static LINKER: RefCell<Linker<()>> = RefCell::new(ENGINE.with(|engine| {
      <Linker<()>>::new(&engine)
  }));
}

pub fn with_wasmi<R>(f: impl FnOnce(&Engine, &mut Linker<()>, &mut Store<()>) -> R) -> R {
    ENGINE.with(|engine| {
        LINKER.with(|linker| {
            STORE.with(|store| f(engine, &mut linker.borrow_mut(), &mut store.borrow_mut()))
        })
    })
}

pub fn define_global_attrs(attrs: Vec<Attr>, store: &mut Store<()>, linker: &mut Linker<()>) {
    for attr in attrs {
        let glob = match attr.val {
            AttrVal::Text(val) | AttrVal::Date(val) | AttrVal::DateTime(val) => {
                let extern_ref = ExternRef::new(&mut *store, val);
                Global::new(&mut *store, Val::ExternRef(extern_ref), Mutability::Const)
            }
            AttrVal::Num(val) => Global::new(&mut *store, Val::I32(val), Mutability::Const),
            AttrVal::Bool(val) => Global::new(&mut *store, Val::I32(val.into()), Mutability::Const),
            AttrVal::Principal(val) => {
                let extern_ref = ExternRef::new(&mut *store, val.to_text());
                Global::new(&mut *store, Val::ExternRef(extern_ref), Mutability::Const)
            }
            AttrVal::Time(val) => {
                let val = val.duration_since(UNIX_EPOCH).expect("time went backwards");

                Global::new(
                    &mut *store,
                    Val::I64(val.as_secs().try_into().unwrap_or(i64::MAX)),
                    Mutability::Const,
                )
            }
        };

        linker
            .define("attrs", &attr.name, Extern::Global(glob))
            .expect("failed to define attrs in linker");
    }
}

pub fn define_global_contents(
    contents_headers: Vec<ContentHeader>,
    contents: Vec<u8>,
    store: &mut Store<()>,
    linker: &mut Linker<()>,
) {
}
