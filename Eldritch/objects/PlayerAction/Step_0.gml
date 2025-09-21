var moved = false;

// --- HORIZONTAL ---
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    if (!collision_with_tag(x + movSpeed, y, "wall")) { x += movSpeed; moved = true; }
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    if (!collision_with_tag(x - movSpeed, y, "wall")) { x -= movSpeed; moved = true; }
}

// --- VERTICAL ---
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    if (!collision_with_tag(x, y + movSpeed, "wall")) { y += movSpeed; moved = true; }
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    if (!collision_with_tag(x, y - movSpeed, "wall")) { y -= movSpeed; moved = true; }
}

// --- FOOTSTEP SOUND CONTROL ---
if (moved) {
    // Start looping footstep sound if not already playing
    if (footstep_sound == -1 || !audio_is_playing(footstep_sound)) {
        footstep_sound = audio_play_sound(footstep_loop, 1, true); // loop = true
    }
} else {
    // Stop sound immediately when player stops
    if (footstep_sound != -1 && audio_is_playing(footstep_sound)) {
        audio_stop_sound(footstep_sound);
        footstep_sound = -1;
    }
}

function collision_with_tag(_x, _y, _tag) {
    var inst = instance_place(_x, _y, all);
    if (inst != noone && variable_instance_exists(inst, "tag")) {
        return (inst.tag == _tag);
    } else {
        return false;
    }
}
