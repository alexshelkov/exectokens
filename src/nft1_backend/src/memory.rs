use ic_stable_structures::memory_manager::{MemoryId, MemoryManager, VirtualMemory};
use ic_stable_structures::DefaultMemoryImpl;
use std::cell::RefCell;

pub type StableMemory = VirtualMemory<DefaultMemoryImpl>;

pub type Memory = VirtualMemory<DefaultMemoryImpl>;

fn mem_id(id: MemoryId) -> StableMemory {
    MEMORY_MANAGER.with(|m| m.get(id))
}

pub struct MemoryIds {
    collection: MemoryId,
    modules: MemoryId,
    modules_data: MemoryId,
    modules_last_id: MemoryId,
    nft_last_id: MemoryId,
    nfts_data: MemoryId,
    nfts_owners: MemoryId,
    owner_nfts: MemoryId,
    nfts_memory: MemoryId,
    nfts_execs: MemoryId,
}

macro_rules! impl_memory_methods {
  ($struct_name:ident { $($field_name:ident),* $(,)? }) => {
      impl $struct_name {
          $(
              pub fn $field_name(&self) -> StableMemory {
                  mem_id(self.$field_name)
              }
          )*
      }
  };
}

impl_memory_methods! {
  MemoryIds {
    collection,
    modules,
    modules_data,
    modules_last_id,
    nft_last_id,
    nfts_data,
    nfts_owners,
    owner_nfts,
    nfts_memory,
    nfts_execs
  }
}

pub const MEM_IDS: MemoryIds = MemoryIds {
    collection: MemoryId::new(0),
    modules: MemoryId::new(1),
    modules_data: MemoryId::new(2),
    modules_last_id: MemoryId::new(3),
    nft_last_id: MemoryId::new(4),
    nfts_data: MemoryId::new(5),
    nfts_owners: MemoryId::new(6),
    owner_nfts: MemoryId::new(7),
    nfts_memory: MemoryId::new(8),
    nfts_execs: MemoryId::new(9),
};

thread_local! {
  static MEMORY_MANAGER: MemoryManager<DefaultMemoryImpl> = MemoryManager::init(DefaultMemoryImpl::default());
}
