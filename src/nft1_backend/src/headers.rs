use candid::{CandidType, Decode, Encode, Principal};

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub enum ContentRole {
    Logo,
    Preview,
    User(String),
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct ContentHeader {
    role: ContentRole,
    start: u32,
    end: u32,
    mime: String,
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct HeaderBase {
    start: u32,
    end: u32,
}

impl From<&ContentHeader> for HeaderBase {
    fn from(header: &ContentHeader) -> Self {
        HeaderBase {
            start: header.start,
            end: header.end,
        }
    }
}

#[derive(Debug)]
pub enum HeaderError {
    FirstNotStartWithZero,
    LastNotEndsWithLastDataIndex,
    StartAndEndNotInOrder,
    PrevStartGreaterThanCurrent,
    PrevEndGreaterThanCurrent,
    StartOutsideOfDataRange,
    EndOutsideOfDataRange,
}

pub fn check_headers(headers: &[HeaderBase], data: &[u8]) -> Result<(), HeaderError> {
    let mut idx = 0;

    let data_len = data.len();
    let data_len: u32 = data_len.checked_sub(1).unwrap_or(0).try_into().unwrap();

    let headers_len = headers.len();

    let mut prev_start: Option<u32> = None;
    let mut prev_end: Option<u32> = None;

    for header in headers {
        if prev_start.is_none() {
            if header.start == 0 {
                prev_start = Some(header.start);
            } else {
                return Err(HeaderError::FirstNotStartWithZero);
            }
        } else {
            if prev_start.unwrap() < header.start {
                prev_start = Some(header.start);
            } else {
                return Err(HeaderError::PrevStartGreaterThanCurrent);
            }
        }

        if prev_end.is_none() {
            prev_end = Some(header.end);
        } else {
            if prev_end.unwrap() < header.end {
                prev_end = Some(header.end);
            } else {
                return Err(HeaderError::PrevEndGreaterThanCurrent);
            }
        }

        if !(prev_start.unwrap() < prev_end.unwrap()) {
            return Err(HeaderError::StartAndEndNotInOrder);
        }

        if prev_start.unwrap() > data_len {
            return Err(HeaderError::StartOutsideOfDataRange);
        }

        if prev_end.unwrap() > data_len {
            return Err(HeaderError::EndOutsideOfDataRange);
        }

        if idx == headers_len - 1 {
            if prev_end.unwrap() != data_len {
                return Err(HeaderError::LastNotEndsWithLastDataIndex);
            }
        }

        idx += 1;
    }

    Ok(())
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_get_empty_headers() -> Result<(), HeaderError> {
        let hed = vec![];
        let dat: Vec<u8> = vec![];

        check_headers(&hed, &dat)
    }

    #[test]
    fn test_get_headers() -> Result<(), HeaderError> {
        let hed = vec![HeaderBase { start: 0, end: 1 }];
        let dat: Vec<u8> = vec![0, 1];

        check_headers(&hed, &dat)
    }
}