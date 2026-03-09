event_inherited();

// =======================
// 1. Look for enemy in lane
// =======================
var target_exists = false;

with (obj_enemy_parent)
{
    if (lane == other.lane && x > other.x)
    {
        target_exists = true;
        break;  // stop searching once found
    }
}


// =======================
// 2. If enemy exists, play animation
// =======================
if (target_exists)
{
    // Fire exactly on punch frame (4)
    if (floor(image_index) == 4 && !has_fired)
    {
        var proj = instance_create_layer(
            x + 20,
            y,
            "Instances",
            obj_projectile
        );

        proj.speed = 6;
        proj.direction = 0;
        proj.damage = damage;

        has_fired = true;
    }

    // Reset fire lock when animation loops
    if (image_index < 1)
    {
        has_fired = false;
    }
}
else
{
    // No enemy → reset animation
    image_index = 0;
    has_fired = false;
}