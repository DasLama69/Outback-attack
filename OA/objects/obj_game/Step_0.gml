// Enemy spawning timer
global.spawn_timer++;

if (global.spawn_timer >= global.spawn_delay)
{
    global.spawn_timer = 0;

    var row = irandom(global.grid_rows - 1);
    var spawn_y = row * global.cell_size + global.cell_size / 2;

    instance_create_layer(room_width + 50, spawn_y, "Instances", obj_cane_toad);
}