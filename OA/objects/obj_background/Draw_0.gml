var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);

var bg_x = -cam_x * parallax;

draw_sprite(spr_outback_bg, 0, bg_x, 0);