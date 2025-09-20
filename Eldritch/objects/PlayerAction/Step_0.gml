// --- PLAYER MOVEMENT SCRIPT WITH FRICTION ---

var acc = 0.4;       // acceleration
var max_spd = 5;     // max speed
var fric = 0.2;      // friction

// Horizontal movement
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) hspeed += acc;
if (keyboard_check(vk_left)  || keyboard_check(ord("A"))) hspeed -= acc;

// Vertical movement
if (keyboard_check(vk_down)  || keyboard_check(ord("S"))) vspeed += acc;
if (keyboard_check(vk_up)    || keyboard_check(ord("W"))) vspeed -= acc;

// Clamp speed
hspeed = clamp(hspeed, -max_spd, max_spd);
vspeed = clamp(vspeed, -max_spd, max_spd);

// Apply friction (slows down when no input)
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
    hspeed = lerp(hspeed, 0, fric);
}
if (!keyboard_check(vk_up) && !keyboard_check(vk_down)) {
    vspeed = lerp(vspeed, 0, fric);
}
