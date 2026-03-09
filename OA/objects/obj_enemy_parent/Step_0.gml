// =======================
// 1. Movement
// =======================
if (recoil_timer > 0)
{
    x += 1.5;     // knock right slightly
    recoil_timer--;
}
else
{
    x -= move_speed;
}


// =======================
// 2. Check collision with defender
// =======================
var target = instance_place(x, y, obj_unit_parent);

if (target != noone)
{
    move_speed = 0;

    // Damage per second (frame independent)
    target.hp -= damage * (1 / room_speed);
}
else
{
    move_speed = 0.5; // resume movement
}


// =======================
// 3. Death check
// =======================
if (hp <= 0)
{
    instance_destroy();
    exit; // stop further logic this frame
}


// =======================
// 4. Flash logic
// =======================
if (flash_timer > 0)
{
    flash_timer--;
    image_blend = make_color_rgb(255, 120, 120); // light red flash
}
else
{
    image_blend = c_white; // reset to normal
}