use candid::CandidType;
use postcard::{from_bytes, to_allocvec};

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum ProgramCreate {
    Wat(String, String),
    Binary(String, Vec<u8>),
}

impl ProgramCreate {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for ProgramCreate {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum ProgramCreateErr {
    InvalidProgram,
}

#[derive(CandidType, Serialize, Deserialize, Debug)]
pub enum ProgramCreateResult {
    Ok(u32),
    Err(ProgramCreateErr),
}

impl ProgramCreateResult {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        from_bytes(&value).ok()
    }
}

impl Into<Vec<u8>> for ProgramCreateResult {
    fn into(self) -> Vec<u8> {
        to_allocvec(&self).unwrap_or(vec![])
    }
}
