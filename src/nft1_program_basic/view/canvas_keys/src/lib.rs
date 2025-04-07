const TICK: u16 = 500;
const SCALE: u8 = 10;
const WIDTH: u8 = 50;
const HEIGHT: u8 = 50;
const KEY_LEFT: u8 = 37;
const KEY_RIGHT: u8 = 39;
const KEY_UP: u8 = 38;
const KEY_DOWN: u8 = 40;

static mut POS_X: u8 = 0;
static mut POS_Y: u8 = 0;
static mut KEY_PRESSED: u8 = 0;

static mut ELAPSED: u32 = 0;
static mut BUFFER: [u8; 4 * WIDTH as usize * HEIGHT as usize] =
    [0; 4 * WIDTH as usize * HEIGHT as usize];

fn draw_pixel(x: u8, y: u8, color: (u8, u8, u8)) {
    let x = x as usize;
    let y = y as usize;
    let w = WIDTH as usize;

    unsafe {
        *BUFFER.get_unchecked_mut(4 * x + 4 * w * y + 0) = color.0; // R value
        *BUFFER.get_unchecked_mut(4 * x + 4 * w * y + 1) = color.1; // G value
        *BUFFER.get_unchecked_mut(4 * x + 4 * w * y + 2) = color.2; // B value
        *BUFFER.get_unchecked_mut(4 * x + 4 * w * y + 3) = 255; // A alpha
    }
}

fn press_key(code: u8) {
    unsafe {
        KEY_PRESSED = code;
    }
}

fn fill(color: (u8, u8, u8)) {
    for x in 0..WIDTH {
        for y in 0..HEIGHT {
            draw_pixel(x, y, color);
        }
    }
}

fn world_start() {
    fill((255, 255, 255))
}

fn world_update() {
    fill((255, 255, 255));

    unsafe {
        draw_pixel(POS_X.into(), POS_Y.into(), (255, 0, 0));

        if POS_X < WIDTH {
            if KEY_PRESSED == KEY_RIGHT {
                POS_X += 1;
            }
        }

        if POS_X > 0 {
            if KEY_PRESSED == KEY_LEFT {
                POS_X -= 1;
            }
        }

        if POS_Y < HEIGHT {
            if KEY_PRESSED == KEY_DOWN {
                POS_Y += 1;
            }
        }

        if POS_Y > 0 {
            if KEY_PRESSED == KEY_UP {
                POS_Y -= 1;
            }
        }
    }
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas() {
    world_start();
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_tick(elapsed_ms: i32) -> bool {
    unsafe {
        ELAPSED += elapsed_ms as u32;

        if ELAPSED >= TICK.into() {
            world_update();
            ELAPSED = 0;
            return true;
        }
    }

    false
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_buffer() -> *const u8 {
    unsafe { BUFFER.as_ptr() }
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_width() -> i32 {
    WIDTH as i32
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_height() -> i32 {
    HEIGHT as i32
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_scale() -> i32 {
    SCALE as i32
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_ticker() -> i32 {
    TICK as i32
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_keyup(code: i32) {
    press_key(0);
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_keydown(code: i32) {
    let code = code as u8;

    if code == KEY_LEFT || code == KEY_RIGHT || code == KEY_UP || code == KEY_DOWN {
        press_key(code);
    }
}
