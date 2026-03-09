// =======================
// 1. Check for enemy hit
// =======================
var hit = instance_place(x, y, obj_enemy_parent);

if (hit != noone)
{
    hit.hp -= damage;
hit.flash_timer = 5;
hit.recoil_timer = 5;

with (obj_game)
{
    shake_timer = 6;
    shake_strength = 4;
}

instance_destroy();
exit;

}


// =======================
// 2. Destroy if off-screen
// =======================
if (x > room_width)
{
    instance_destroy();
}