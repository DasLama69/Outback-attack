var shade = 1 - (grid_y * 0.05);
shade = clamp(shade, 0.7, 1);

draw_sprite_ext(
    spr_tile,
    0,
    x,
    y,
    1,
    1,
    0,
    make_color_rgb(255 * shade, 255 * shade, 255 * shade),
    0.85
);