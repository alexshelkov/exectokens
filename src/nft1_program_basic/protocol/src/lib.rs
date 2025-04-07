#[macro_use]
extern crate serde;

use postcard::{from_bytes, to_allocvec};

#[derive(Serialize, Deserialize, Debug)]
pub enum In {
    GetMelt,
    SetMelt(bool),
    MemKeys,
    GetMem(u8),
    SetMem(u32, Vec<u8>),
}

impl In {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(value).ok()
    }

    pub fn to_buf(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

#[derive(Serialize, Deserialize, Debug)]
pub enum Out {
    GetMelt(u8),
    SetMelt,
    GetKeys(Vec<u8>),
    GetMem(Vec<u8>),
    SetMem,
    InvalidInput,
}

impl Out {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(value).ok()
    }

    pub fn to_buf(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

#[cfg(test)]
mod test_contents {
    use super::*;

    #[test]
    fn test_in() {
        assert_eq!(In::GetMelt.to_buf(), [0]);
        assert_eq!(In::MemKeys.to_buf(), [2]);
        assert_eq!(In::GetMem(5).to_buf(), [3, 5]);
        assert_eq!(In::SetMem(15, vec![1, 2, 3]).to_buf(), [4, 15, 3, 1, 2, 3]);
    }

    #[test]
    fn test_out() {
        assert_eq!(Out::GetMelt(1).to_buf(), [0, 1]);
        assert_eq!(Out::SetMelt.to_buf(), [1]);
        assert_eq!(Out::GetKeys(vec![1, 2, 3]).to_buf(), [2, 3, 1, 2, 3]);
        assert_eq!(Out::SetMem.to_buf(), [4]);
        assert_eq!(Out::InvalidInput.to_buf(), [5]);
    }
}
