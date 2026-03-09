if (shake_timer > 0)
{
    shake_timer--;

    var offset_x = random_range(-shake_strength, shake_strength);
    var offset_y = random_range(-shake_strength, shake_strength);

    camera_set_view_pos(view_camera[0], offset_x, offset_y);
}
else
{
    camera_set_view_pos(view_camera[0], 0, 0);
}