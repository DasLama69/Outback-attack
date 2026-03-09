// =======================
// UI BAR SETUP
// =======================
var ui_top = global.grid_rows * global.cell_size;

// Background bar
draw_set_color(make_color_rgb(30, 60, 30));
draw_rectangle(0, ui_top, room_width, room_height, false);


// =======================
// KANGAROO BUTTON
// =======================

// Scaled sprite (0.6 like you requested)
draw_sprite_ext(
    spr_kangaroo,
    0,
    button_kanga_x,
    button_y,
    0.6, 0.6,
    0,
    c_white,
    1
);

// Cooldown overlay
if (cooldown_kanga > 0)
{
    var ratio = cooldown_kanga / cooldown_time_kanga;

    draw_set_color(c_black);
    draw_rectangle(
        button_kanga_x - 48,
        button_y - 48,
        button_kanga_x + 48,
        button_y - 48 + (96 * ratio),
        false
    );
}

// =======================
// EUCALYPTUS BUTTON
// =======================

// Scaled sprite (since original is large)
draw_sprite_ext(
    spr_eucalyptus,
    0,
    button_euca_x,
    button_y,
    0.2, 0.2,
    0,
    c_white,
    1
);

// Cooldown overlay
if (cooldown_euca > 0)
{
    var ratio = cooldown_euca / cooldown_time_euca;

    draw_set_color(c_black);
    draw_rectangle(
        button_euca_x - 48,
        button_y - 48,
        button_euca_x + 48,
        button_y - 48 + (96 * ratio),
        false
    );
}


// =======================
// SELECTION HIGHLIGHT
// =======================
if (global.selected_unit == obj_kangaroo)
{
    draw_set_color(c_yellow);
    draw_rectangle(
        button_kanga_x - 48,
        button_y - 48,
        button_kanga_x + 48,
        button_y + 48,
        true
    );
}

if (global.selected_unit == obj_eucalyptus)
{
    draw_set_color(c_yellow);
    draw_rectangle(
        button_euca_x - 48,
        button_y - 48,
        button_euca_x + 48,
        button_y + 48,
        true
    );
}


// =======================
// MONEY DISPLAY
// =======================
draw_set_color(c_white);
draw_text(20, ui_top + 20, "Water: " + string(global.money));