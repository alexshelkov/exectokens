use data_url::{forgiving_base64::InvalidBase64, DataUrl, DataUrlError};

#[derive(Debug)]
pub enum Base64Err {
    DataUrlError(DataUrlError),
    InvalidBase64(InvalidBase64),
}

pub fn base64_to_buf(value: String) -> Result<(String, Vec<u8>), Base64Err> {
    let url = DataUrl::process(&value).map_err(|err| Base64Err::DataUrlError(err))?;
    
    let (body, _) = url
        .decode_to_vec()
        .map_err(|err| Base64Err::InvalidBase64(err))?;

    let mime = url.mime_type().to_string();

    Ok((mime, body))
}

#[cfg(test)]
mod test_base64 {
    use super::*;

    const TEST_JPG: &str = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAUDBAQEAwUEBAQFBQUGBwwIBwcHBw8LCwkMEQ8SEhEPERETFhwXExQaFRERGCEYGh0dHx8fExciJCIeJBweHx7/2wBDAQUFBQcGBw4ICA4eFBEUHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh7/wgARCAAQABADAREAAhEBAxEB/8QAFgABAQEAAAAAAAAAAAAAAAAAAAQI/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAAA0ACgH//EAB8QAAICAwEBAQEBAAAAAAAAAAIEAQMFERIGADEhQv/aAAgBAQABPwBO5H0DGOyXo8I1m6MqAMUAdUWJY5e0tL9VlOisL9I+SkZn9EPm7UfPs5HJecwjWFXxQHewAVRWlkV6i0xzWP8ABsH/ACfIyUx+kH1L93mMQp513OLeeLGaoTdfXg0nVhjmuCLoNWQOokewLoZnUj9a/f6fEN+dSza3oSye6XHUF4BJJYo5sgS6PdkjuIHsi6KJ0I/f/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAgEBPwAf/8QAFBEBAAAAAAAAAAAAAAAAAAAAIP/aAAgBAwEBPwAf/9k=";
    const TEST_PNG: &str = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAANlBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC3dmhyAAAAEnRSTlMAqq2PKkQlBZcjjIg3J0aTgQ2orqxeAAAAd0lEQVQY01WPWw6EMAwDnUdLUpYC97/sGooQnVaRJj92cOGmImqOwWJ7gmTYcrsWPBS9NkZ/Nwb4DtQKjBkOS7jIhjHToMBat/WZVAF+ny98EwKdnGrJtOMEzqMwqcGD+y6Ezti5WG9z9a7jGIu8m0ajf85vDvIHaPMCsqJHXgQAAAAASUVORK5CYII=";

    #[test]
    fn data_url() {
        let (type_, _) = base64_to_buf(TEST_PNG.to_string()).unwrap();
        assert_eq!(type_, "image/png");

        let (type_, _) = base64_to_buf(TEST_JPG.to_string()).unwrap();
        assert_eq!(type_, "image/jpeg");
    }
}
