event_inherited();

produce_timer++;

if (produce_timer >= produce_delay)
{
    produce_timer = 0;

var water = instance_create_layer(x, y, "FX", obj_water_drop);

water.tile_center_x = x;
water.tile_center_y = y;
water.tile_size = global.cell_size;
}