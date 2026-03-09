// =======================
// POP-IN SCALE ANIMATION
// =======================
if (image_yscale < 0.5)
{
    image_yscale += 0.02;
    image_xscale = image_yscale;
}


// =======================
// FLOAT + WIGGLE
// =======================

// Gentle upward float
y -= 0.2;

// Smooth horizontal wiggle
x = tile_center_x + lengthdir_x(6, current_time * 0.2);


// =======================
// CONSTRAIN TO TILE
// =======================
var half = tile_size / 2;

// Keep safely inside square
x = clamp(x,
          tile_center_x - half + 12,
          tile_center_x + half - 12);

y = clamp(y,
          tile_center_y - half + 12,
          tile_center_y + half - 12);


// =======================
// DRAG TO COLLECT
// =======================
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button(mb_left))
{
    if (point_in_rectangle(mx, my,
        bbox_left, bbox_top,
        bbox_right, bbox_bottom))
    {
        global.money += 25;
        instance_destroy();
    }
}


// =======================
// LIFETIME
// =======================
life--;

if (life <= 0)
{
    instance_destroy();
}