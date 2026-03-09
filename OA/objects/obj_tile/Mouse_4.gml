// =======================
// 1. Must have something selected
// =======================
if (global.selected_unit == noone)
{
    exit;
}


// =======================
// 2. Prevent clicking in UI area
// =======================
if (mouse_y >= global.grid_rows * global.cell_size)
{
    exit;
}


// =======================
// 3. Block placement if on cooldown
// =======================
if (global.selected_unit == obj_kangaroo)
{
    if (obj_ui_controller.cooldown_kanga > 0)
    {
        exit;
    }
}

if (global.selected_unit == obj_eucalyptus)
{
    if (obj_ui_controller.cooldown_euca > 0)
    {
        exit;
    }
}


// =======================
// 4. Must be empty grid cell
// =======================
if (global.grid[# grid_x, grid_y] != -1)
{
    exit;
}


// =======================
// 5. Check cost (optional — improve later)
// =======================
var cost = 0;

if (global.selected_unit == obj_kangaroo)     cost = 50;
if (global.selected_unit == obj_eucalyptus)   cost = 25;

if (global.money < cost)
{
    exit;
}


// =======================
// 6. Create Unit
// =======================
var unit = instance_create_layer(
    x,
    y,
    "Instances",
    global.selected_unit
);

unit.grid_x = grid_x;
unit.grid_y = grid_y;
unit.lane   = grid_y;

global.grid[# grid_x, grid_y] = unit.id;

global.money -= cost;


// =======================
// 7. Start Cooldown (Selection Persists)
// =======================
if (global.selected_unit == obj_kangaroo)
{
    with (obj_ui_controller)
    {
        cooldown_kanga = cooldown_time_kanga;
    }
}

if (global.selected_unit == obj_eucalyptus)
{
    with (obj_ui_controller)
    {
        cooldown_euca = cooldown_time_euca;
    }
}