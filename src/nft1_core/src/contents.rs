use crate::utils::base64_to_buf;
use candid::CandidType;
use data_url::mime;

#[derive(CandidType, Clone, Serialize, Deserialize, PartialEq, Debug)]
pub enum ContentRole {
    Logo,
    Preview,
    User(String),
}

impl ContentRole {
    pub fn is_valid_mime(&self, mime: &str) -> bool {
        let mime = mime.parse::<mime::Mime>();

        match &self {
            Self::Logo | Self::Preview => mime
                .map(|mime| match (mime.type_.as_str(), mime.subtype.as_str()) {
                    ("image", "png" | "svg") => true,
                    _ => false,
                })
                .unwrap_or(false),
            Self::User(_) => true,
        }
    }
}

impl From<&str> for ContentRole {
    fn from(value: &str) -> Self {
        match value {
            "Logo" => Self::Logo,
            "Preview" => Self::Preview,
            val => Self::User(val.into()),
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

#[derive(CandidType, Deserialize, Clone, Debug)]
pub struct Content(pub ContentHeader, pub Vec<u8>);

impl Content {
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
}

pub type Contents = (Vec<ContentHeader>, Vec<u8>);

pub fn create_contents(contents_create: Vec<ContentsCreate>) -> Option<Contents> {
    let mut shift = 0;
    let mut headers: Vec<_> = vec![];
    let mut contents: Vec<_> = vec![];

    for create in contents_create {
        let created = Content::create(create)?;
        
        let mut content = created.1;
        contents.append(&mut content);

        let mut header = created.0;

        header.start += shift;
        header.end += shift;

        shift += header.end;

        headers.push(header);
    }

    Some((headers, contents))
}


#[derive(CandidType, Serialize, Deserialize, Debug)]
pub struct ContentsCreate(pub String, pub String);

#[cfg(test)]
mod test_contents {
    use super::*;

    const TEST_JPG: &str = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wgARCAAQABADAREAAhEBAxEB/8QAFgABAQEAAAAAAAAAAAAAAAAAAAQI/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAAA0ACgH//EAB8QAAICAwEBAQEBAAAAAAAAAAIEAQMFERIGADEhQv/aAAgBAQABPwBO5H0DGOyXo8I1m6MqAMUAdUWJY5e0tL9VlOisL9I+SkZn9EPm7UfPs5HJecwjWFXxQHewAVRWlkV6i0xzWP8ABsH/ACfIyUx+kH1L93mMQp513OLeeLGaoTdfXg0nVhjmuCLoNWQOokewLoZnUj9a/f6fEN+dSza3oSye6XHUF4BJJYo5sgS6PdkjuIHsi6KJ0I/f/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAgEBPwAf/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAwEBPwAf/9k=";
    const TEST_PNG: &str = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAANlBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3dmhyAAAAEnRSTlMAqq2PKkQlBZcjjIg3J0aTgQ2orqxeAAAAd0lEQVQY01WPWw6EMAwDnUdLUpYC97/sGooQnVaRJj92cOGmImqOwWJ7gmTYcrsWPBS9NkZ/Nwb4DtQKjBkOS7jIhjHToMBat/WZVAF+ny98EwKdnGrJtOMEzqMwqcGD+y6Ezti5WG9z9a7jGIu8m0ajf85vDvIHaPMCsqJHXgQAAAAASUVORK5CYII=";

    #[test]
    fn test_empty() {
        assert!(Content::create(ContentsCreate("".to_string(), "".to_string())).is_none());
        assert!(Content::create(ContentsCreate("a".to_string(), "".to_string())).is_none());
        assert!(Content::create(ContentsCreate("".to_string(), "a".to_string())).is_none());
    }

    #[test]
    fn create_logo() {
        let logo1 = Content::create_logo(TEST_PNG.to_string());
        let logo1 = logo1.unwrap();

        assert_eq!(logo1.0.role, ContentRole::Logo);
        assert_eq!(logo1.0.mime, "image/png");

        let logo2 = Content::create_logo(TEST_JPG.to_string());
        assert!(logo2.is_none());
    }
}
