var ui_top = global.grid_rows * global.cell_size;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (my >= ui_top)
{
    // Kangaroo
    if (point_in_rectangle(mx, my,
        button_kanga_x - 48, button_y - 48,
        button_kanga_x + 48, button_y + 48))
    {
        if (cooldown_kanga <= 0)
        {
            global.selected_unit = obj_kangaroo;
        }
    }

    // Eucalyptus
    if (point_in_rectangle(mx, my,
        button_euca_x - 48, button_y - 48,
        button_euca_x + 48, button_y + 48))
    {
        if (cooldown_euca <= 0)
        {
            global.selected_unit = obj_eucalyptus;
        }
    }
}