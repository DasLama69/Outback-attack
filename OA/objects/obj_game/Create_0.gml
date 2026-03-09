// =======================
// GRID SETTINGS
// =======================

global.cell_size = 96;
global.grid_cols = 9;
global.grid_rows = 5;

global.grid = ds_grid_create(global.grid_cols, global.grid_rows);
ds_grid_clear(global.grid, -1); // -1 means empty


// =======================
// GAME STATE
// =======================

global.money = 250;
global.spawn_timer = 0;
global.spawn_delay = 180; // frames (3 seconds at 60fps)

// =======================
// CREATE GRID TILES
// =======================

for (var gx = 0; gx < global.grid_cols; gx++)
{
    for (var gy = 0; gy < global.grid_rows; gy++)
    {
        var px = gx * global.cell_size + global.cell_size / 2;
        var py = gy * global.cell_size + global.cell_size / 2;

        instance_create_layer(px, py, "Tiles", obj_tile);
    }
}
global.selected_unit = obj_kangaroo;

shake_timer = 0;
shake_strength = 0;

// board placement on screen
global.board_x = 320;
global.board_y = 140;

// grid
global.grid_cols = 9;
global.grid_rows = 6;

global.cell_size = 96;