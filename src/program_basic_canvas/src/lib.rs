use wasm_bindgen::prelude::*;

const TICK: u16 = 500;
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

#[wasm_bindgen]
pub fn smart_nft_view_canvas_get_buffer() -> *const u8 {
    unsafe { BUFFER.as_ptr() }
}

#[wasm_bindgen]
pub fn smart_nft_view_canvas_get_width() -> usize {
    WIDTH
}

#[wasm_bindgen]
pub fn smart_nft_view_canvas_get_height() -> usize {
    WIDTH
}

#[wasm_bindgen]
pub fn smart_nft_view_canvas_get_scale() -> u8 {
    10
}

#[wasm_bindgen]
pub fn smart_nft_view_canvas_get_tick() -> u16 {
    TICK
}

#[wasm_bindgen]
pub fn smart_nft_view_canvas(elapsed_ms: u32) -> bool {
    if elapsed_ms == 0 {
        world_start();
        return true;
    }

    unsafe {
        ELAPSED += elapsed_ms;

        if ELAPSED >= TICK.into() {
            world_update();
            ELAPSED = 0;
            return true;
        }

        return false;
    }
}

static VIEW: &str = "Canvas";

#[wasm_bindgen]
pub fn smart_nft_view_name() -> String {
    VIEW.into()
}
