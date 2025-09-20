// --- SIMPLE PLAYER MOVEMENT WITH SOLID COLLISION ---

var movSpeed = 4; // movement movSpeed

// --- HORIZONTAL ---
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    if (!place_meeting(x + movSpeed, y, all)) x += movSpeed;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    if (!place_meeting(x - movSpeed, y, all)) x -= movSpeed;
}

// --- VERTICAL ---
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    if (!place_meeting(x, y + movSpeed, all)) y += movSpeed;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    if (!place_meeting(x, y - movSpeed, all)) y -= movSpeed;
}
