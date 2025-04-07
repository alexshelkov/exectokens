const TICK: u16 = 500;
const SCALE: u8 = 10;
const WIDTH: usize = 50;
const HEIGHT: usize = 50;

static mut POS_X: u8 = 0;
static mut POS_Y: u8 = 0;

static mut ELAPSED: u32 = 0;
static mut BUFFER: [u8; 4 * WIDTH * HEIGHT] = [0; 4 * WIDTH * HEIGHT];

fn draw_pixel(x: usize, y: usize, color: (u8, u8, u8)) {
    unsafe {
        *BUFFER.get_unchecked_mut(4 * x + 4 * WIDTH * y + 0) = color.0; // R value
        *BUFFER.get_unchecked_mut(4 * x + 4 * WIDTH * y + 1) = color.1; // G value
        *BUFFER.get_unchecked_mut(4 * x + 4 * WIDTH * y + 2) = color.2; // B value
        *BUFFER.get_unchecked_mut(4 * x + 4 * WIDTH * y + 3) = 255; // A alpha
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

        if POS_X < u8::max_value()
            && POS_Y < u8::max_value()
            && usize::from(POS_X) < WIDTH
            && usize::from(POS_Y) < HEIGHT
        {
            POS_X += 1;
            POS_Y += 1;
        } else {
            POS_X = 0;
            POS_Y = 0;
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
pub extern "C" fn smart_nft_view_canvas_get_width() -> usize {
    WIDTH
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_height() -> usize {
    WIDTH
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_scale() -> u8 {
    SCALE
}

#[no_mangle]
pub extern "C" fn smart_nft_view_canvas_get_ticker() -> u16 {
    TICK
}
