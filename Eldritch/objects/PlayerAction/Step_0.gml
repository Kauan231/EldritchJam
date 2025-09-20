var movSpeed = 4;

// --- HORIZONTAL ---
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    if (!collision_with_tag(x + movSpeed, y, "wall")) x += movSpeed;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    if (!collision_with_tag(x - movSpeed, y, "wall")) x -= movSpeed;
}

// --- VERTICAL ---
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    if (!collision_with_tag(x, y + movSpeed, "wall")) y += movSpeed;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    if (!collision_with_tag(x, y - movSpeed, "wall")) y -= movSpeed;
}

function collision_with_tag(_x, _y, _tag) {
    var inst = instance_place(_x, _y, all);
    if (inst != noone && variable_instance_exists(inst, "tag")) {
        return (inst.tag == _tag);
    } else {
        return false; // no collision if no instance or no tag
    }
}

