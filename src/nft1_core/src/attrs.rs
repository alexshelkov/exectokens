use candid::{CandidType, Principal};
use std::time::{Duration, SystemTime, UNIX_EPOCH};

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub enum AttrVal {
    Bool(bool),
    Num(i32),
    Text(String),
    Principal(Principal),
    Date(String),
    Time(SystemTime),
    DateTime(String),
}

impl AttrVal {
    pub fn from_buf(value: &[u8]) -> Option<Self> {
        match value.get(0)? {
            0 => {
                let val = u8::from_le_bytes(value.get(1..)?.try_into().ok()?);

                Some(Self::Bool(val == 1))
            },
            1 => {
                let val = i32::from_le_bytes(value.get(1..)?.try_into().ok()?);

                Some(Self::Num(val))
            },
            2 => {
                let buf = value.get(1..)?;

                let val = String::from_utf8(buf.to_vec()).ok()?;

                Some(Self::Text(val))
            },
            3 => {
                let buf = value.get(1..)?;

                let val = String::from_utf8(buf.to_vec()).ok()?;

                Some(Self::Principal(Principal::from_text(val).ok()?))
            },
            4 => {
                let buf = value.get(1..)?;

                let val = String::from_utf8(buf.to_vec()).ok()?;

                Some(Self::Date(val))
            },
            5 => {
                let secs = u64::from_le_bytes(value.get(1..)?.try_into().ok()?);

                let duration = Duration::from_secs(secs);
                let time = UNIX_EPOCH + duration;

                Some(Self::Time(time))
            },
            6 => {
                let buf = value.get(1..)?;

                let val = String::from_utf8(buf.to_vec()).ok()?;

                Some(Self::DateTime(val))
            },
            _ => None
        }
    }
}

impl Into<Vec<u8>> for AttrVal {
    fn into(self) -> Vec<u8> {
        let mut encoded: Vec<u8> = vec![];

        match self {
            Self::Bool(val) => encoded.extend_from_slice(&[0, val as u8]),
            Self::Num(val) => {
                encoded.push(1);
                encoded.extend_from_slice(&val.to_le_bytes());
            },
            Self::Text(val)  => {
                encoded.push(2);
                encoded.append(&mut val.into_bytes());
            },
            Self::Principal(val)  => {
                encoded.push(3);
                encoded.append(&mut val.to_text().into_bytes());
            }
            Self::Date(val)  => {
                encoded.push(4);
                encoded.append(&mut val.into_bytes());
            },
            Self::Time(val)  => {
                encoded.push(5);
                
                let time = val
                    .duration_since(UNIX_EPOCH).unwrap_or(Duration::default());
                let secs: u64 = time.as_secs();

                encoded.extend_from_slice(&secs.to_le_bytes());
            },
            Self::DateTime(val)  => {
                encoded.push(6);
                encoded.append(&mut val.into_bytes());
            },
        }

        encoded
    }
}

#[cfg(test)]
mod test_attrs {
    use super::*;

    #[test]
    fn test_encoding() {
        let x= AttrVal::from_buf(&[0, 1]);

        // TODO: !!!
        println!("{x:?}");
    }
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct Attr {
    pub name: String,
    pub val: AttrVal,
}
