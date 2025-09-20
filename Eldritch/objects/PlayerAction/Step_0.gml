// --- PLAYER MOVEMENT SCRIPT ---

// Movement speed
var move_speed = 4;

// Reset movement
var hmove = 0;
var vmove = 0;

// Keyboard input (WASD or Arrow Keys)
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) hmove = 1;
if (keyboard_check(vk_left)  || keyboard_check(ord("A"))) hmove = -1;
if (keyboard_check(vk_down)  || keyboard_check(ord("S"))) vmove = 1;
if (keyboard_check(vk_up)    || keyboard_check(ord("W"))) vmove = -1;

// Normalize diagonal movement (prevents moving faster diagonally)
if (hmove != 0 || vmove != 0) {
    var len = point_distance(0,0,hmove,vmove);
    hmove /= len;
    vmove /= len;
}

// Apply movement
x += hmove * move_speed;
y += vmove * move_speed;