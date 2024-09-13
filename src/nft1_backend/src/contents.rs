use candid::{CandidType, Decode, Encode, Principal};
use data_url::{forgiving_base64::InvalidBase64, mime, DataUrl, DataUrlError};

#[derive(Debug)]
pub enum Base64Err {
    DataUrlError(DataUrlError),
    InvalidBase64(InvalidBase64),
}

fn base64_to_buf(value: String) -> Result<(String, Vec<u8>), Base64Err> {
    let url = DataUrl::process(&value).map_err(|err| Base64Err::DataUrlError(err))?;
    let (body, fragment) = url
        .decode_to_vec()
        .map_err(|err| Base64Err::InvalidBase64(err))?;

    let mime = url.mime_type().to_string();

    Ok((mime, body))
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct HeaderBase(pub u32, pub u32);

impl From<&ContentHeader> for HeaderBase {
    fn from(header: &ContentHeader) -> Self {
        Self(header.start, header.end)
    }
}

#[derive(CandidType, Clone, Serialize, Deserialize, PartialEq, Debug)]
pub enum ContentRole {
    Logo,
    Preview,
    User(String),
}

impl ContentRole {
    pub fn is_valid_mime(&self, mime: &str) -> bool {
        let mime = mime.parse::<mime::Mime>();

        mime.map(|mime| match (mime.type_.as_str(), mime.subtype.as_str()) {
            ("image", "png" | "svg") => true,
            _ => false,
        })
        .unwrap_or(false)
    }
}

impl From<&str> for ContentRole {
    fn from(value: &str) -> Self {
        match value {
            "Logo" => Self::Logo,
            "Preview" => Self::Preview,
            role => Self::User(role.into()),
        }
    }
}

#[derive(CandidType, Clone, Serialize, Deserialize, Debug)]
pub struct ContentHeader {
    pub role: ContentRole,
    pub start: u32,
    pub end: u32,
    pub mime: String,
}

impl ContentHeader {
    pub fn headers_to_buf(headers: Vec<Self>) -> Vec<u8> {
        let mut buf = vec![];

        for header in headers {
            let mut header: Vec<u8> = header.into();
            buf.append(&mut header);
        }

        buf
    }

    pub fn headers_from_buf(buf: Vec<u8>) -> Option<Vec<Self>> {
        let buf_len = buf.len();
        let mut headers = vec![];
        let mut start = 0;

        loop {
            let result = Self::from_buf(&buf[start..]);

            if let Some((end, header)) = result {
                headers.push(header);

                if start + end < buf_len {
                    start += end;
                } else {
                    break;
                }
            } else {
                return None;
            }
        };

        Some(headers)
    }

    fn from_buf(value: &[u8]) -> Option<(usize, Self)> {
        let start = u32::from_le_bytes(value.get(1..5)?.try_into().ok()?);
        let end = u32::from_le_bytes(value.get(5..9)?.try_into().ok()?);

        let mime_len = u32::from_le_bytes(value.get(9..13)?.try_into().ok()?);
        let mime_len: usize = mime_len.try_into().ok()?;

        let mime_buf = value.get(13..13 + mime_len)?.to_vec();
        let mime = String::from_utf8(mime_buf).ok()?;

        let mut header_end = 13 + mime_len;
        
        let role: ContentRole;

        if value[0] == 0 {
            role = ContentRole::Logo;
        } else if value[0] == 1 {
            role = ContentRole::Preview;
        } else if value[0] == 255 {
            let name_len =
                u32::from_le_bytes(value.get(13 + mime_len..17 + mime_len)?.try_into().ok()?);
            let name_len: usize = name_len.try_into().ok()?;

            let name_buf = value.get(17 + mime_len..17 + mime_len + name_len)?.to_vec();
            let name = String::from_utf8(name_buf).unwrap_or("".into());

            role = ContentRole::User(name);

            header_end = 17 + mime_len + name_len;
        } else {
            return None;
        }

        Some((
            header_end,
            Self {
                role,
                start,
                end,
                mime,
            },
        ))
    }
}

impl Into<Vec<u8>> for ContentHeader {
    fn into(self) -> Vec<u8> {
        let mut role_name: Option<String> = None;
        let mut role_encoded: u8 = 0;
        let mut encoded: Vec<u8> = vec![];

        if let ContentRole::User(name) = self.role {
            role_name = Some(name);
            role_encoded = 255;
        } else if ContentRole::Preview == self.role {
            role_encoded = 1;
        }

        encoded.push(role_encoded);

        let start = self.start.to_le_bytes();
        let end = self.end.to_le_bytes();

        encoded.extend(start);
        encoded.extend(end);

        let mut mime = self.mime.into_bytes();
        let mine_len: u32 = mime.len().try_into().unwrap();
        let mime_len = mine_len.to_le_bytes();

        encoded.extend(mime_len);
        encoded.append(&mut mime);


        if let Some(role_name) = role_name {
            let mut name = role_name.into_bytes();
            let name_len: u32 = name.len().try_into().unwrap();
            let name_len = name_len.to_le_bytes();

            encoded.extend(name_len);
            encoded.append(&mut name);
        }

        encoded
    }
}

#[cfg(test)]
mod test_content_header {
    use super::*;

    const HEADER_1: [u8; 16] = [0, 10, 0, 0, 0, 20, 0, 0, 0, 3, 0, 0, 0, 49, 50, 51];
    const HEADER_2: [u8; 23] = [
        255, 3, 0, 0, 0, 11, 0, 0, 0, 2, 0, 0, 0, 49, 50, 4, 0, 0, 0, 120, 122, 107, 109,
    ];

    #[test]
    fn test_encoding() {
        let h1 = ContentHeader {
            role: ContentRole::Logo,
            start: 10,
            end: 20,
            mime: "123".into(),
        };
        let e1: Vec<u8> = h1.into();
        assert_eq!(e1, HEADER_1);

        let h2 = ContentHeader {
            role: ContentRole::User("xzkm".into()),
            start: 3,
            end: 11,
            mime: "12".into(),
        };
        let e2: Vec<u8> = h2.into();
        assert_eq!(e2, HEADER_2);
    }

    #[test]
    fn test_decoding() {
        let (e1, h1) = ContentHeader::from_buf(&HEADER_1).unwrap();
        assert_eq!(e1, 16);
        assert_eq!(h1.start, 10);
        assert_eq!(h1.end, 20);
        assert_eq!(h1.mime, "123");

        let (e2, h2) = ContentHeader::from_buf(&HEADER_2).unwrap();
        assert_eq!(e2, 23);
        assert_eq!(h2.start, 3);
        assert_eq!(h2.end, 11);
        assert_eq!(h2.mime, "12");
        assert_eq!(
            match h2.role {
                ContentRole::User(name) => name,
                _ => "".into(),
            },
            "xzkm"
        );

        let h3 = ContentHeader::from_buf(&[]);
        assert!(h3.is_none());

        let h4 = ContentHeader::from_buf(&[0, 1, 2, 3, 4]);
        assert!(h4.is_none());

        let h5 = ContentHeader::from_buf(&[255, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]);
        assert!(h5.is_none());
    }

    #[test]
    fn test_multi_decoding() {
        let mut buf = vec![];
        buf.extend_from_slice(&HEADER_1);
        buf.extend_from_slice(&HEADER_2);
        buf.extend_from_slice(&HEADER_2);

        let headers = ContentHeader::headers_from_buf(buf).unwrap();

        assert_eq!(headers.len(), 3);
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

#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct Contents(pub ContentHeader, pub Vec<u8>);

impl Contents {
    pub fn create_logo(value: String) -> Option<Self> {
        Self::create(ContentsCreate("Logo".to_string(), value))
    }

    pub fn create(value: ContentsCreate) -> Option<Self> {
        if value.0.len() == 0 || value.1.len() == 0 {
            return None;
        }

        let role = ContentRole::from(value.0.as_str());

        let (mime, buf) = base64_to_buf(value.1).ok()?;

        if !role.is_valid_mime(&mime) {
            return None;
        }

        let header = ContentHeader {
            role,
            start: 0,
            end: buf.len() as u32,
            mime,
        };

        Some(Self(header, buf))
    }

    pub fn create_many(
        contents_create: Vec<ContentsCreate>,
    ) -> Option<(Vec<ContentHeader>, Vec<u8>)> {
        let mut shift = 0;
        let mut headers: Vec<_> = vec![];
        let mut contents: Vec<_> = vec![];

        for create in contents_create {
            let created = Contents::create(create);

            if created.is_none() {
                return None;
            }

            let mut created = created.unwrap();
            contents.append(&mut created.1);

            let header = ContentHeader {
                role: created.0.role,
                start: created.0.start + shift,
                end: created.0.end + shift,
                mime: created.0.mime,
            };

            shift += created.0.end;

            headers.push(header);
        }

        Some((headers, contents))
    }
}

#[derive(CandidType, Deserialize)]
pub struct ContentsCreate(pub String, pub String);

#[cfg(test)]
mod test_contents {
    use super::*;

    const TEST_JPG: &str = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wgARCAAQABADAREAAhEBAxEB/8QAFgABAQEAAAAAAAAAAAAAAAAAAAQI/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAAA0ACgH//EAB8QAAICAwEBAQEBAAAAAAAAAAIEAQMFERIGADEhQv/aAAgBAQABPwBO5H0DGOyXo8I1m6MqAMUAdUWJY5e0tL9VlOisL9I+SkZn9EPm7UfPs5HJecwjWFXxQHewAVRWlkV6i0xzWP8ABsH/ACfIyUx+kH1L93mMQp513OLeeLGaoTdfXg0nVhjmuCLoNWQOokewLoZnUj9a/f6fEN+dSza3oSye6XHUF4BJJYo5sgS6PdkjuIHsi6KJ0I/f/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAgEBPwAf/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAwEBPwAf/9k=";
    const TEST_PNG: &str = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAANlBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3dmhyAAAAEnRSTlMAqq2PKkQlBZcjjIg3J0aTgQ2orqxeAAAAd0lEQVQY01WPWw6EMAwDnUdLUpYC97/sGooQnVaRJj92cOGmImqOwWJ7gmTYcrsWPBS9NkZ/Nwb4DtQKjBkOS7jIhjHToMBat/WZVAF+ny98EwKdnGrJtOMEzqMwqcGD+y6Ezti5WG9z9a7jGIu8m0ajf85vDvIHaPMCsqJHXgQAAAAASUVORK5CYII=";

    #[test]
    fn data_url() {
        let (type_, buf) = base64_to_buf(TEST_PNG.to_string()).unwrap();
        assert_eq!(type_, "image/png");

        let (type_, buf) = base64_to_buf(TEST_JPG.to_string()).unwrap();
        assert_eq!(type_, "image/jpeg");
    }

    #[test]
    fn test_empty() {
        assert!(Contents::create(ContentsCreate("".to_string(), "".to_string())).is_none());
        assert!(Contents::create(ContentsCreate("a".to_string(), "".to_string())).is_none());
        assert!(Contents::create(ContentsCreate("".to_string(), "a".to_string())).is_none());
    }

    #[test]
    fn create_logo() {
        let logo1 = Contents::create_logo(TEST_PNG.to_string());
        let logo1 = logo1.unwrap();

        assert_eq!(logo1.0.role, ContentRole::Logo);
        assert_eq!(logo1.0.mime, "image/png");

        let logo2 = Contents::create_logo(TEST_JPG.to_string());
        assert!(logo2.is_none());
    }
}
