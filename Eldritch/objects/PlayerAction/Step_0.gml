function Die() {
	// Start the animation
	sprite_index = Death;
	image_speed = 1; // normal playback speed

	// Stop after the last frame
	if (image_index >= image_number - 1) {
	    image_speed = 0; // freeze animation
	    image_index = image_number - 1; // ensure last frame
	}
	
	
	if(hasPlayedSound == false) {
		audio_play_sound(Damage, 1, false)
		hasPlayedSound = true;
	}
	
		// Fade-in logic
	if (alpha < 1) {
	    alpha += fade_in_speed;
	}
}

if(isDead) {
	return Die()
}


var moved = false;
var spd = movSpeed;

// --- INPUT ---
var moveX = (keyboard_check(vk_right) || keyboard_check(ord("D"))) 
          - (keyboard_check(vk_left)  || keyboard_check(ord("A")));
var moveY = (keyboard_check(vk_down)  || keyboard_check(ord("S"))) 
          - (keyboard_check(vk_up)    || keyboard_check(ord("W")));


if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	sprite_index = IdleWalkSide;
	image_xscale = 2;
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	sprite_index = IdleWalkSide;
	image_xscale = -2;
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	sprite_index = IdleWalkFront;
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	sprite_index = IdleWalkBack;
}

/// --- NORMALIZE DIAGONAL ---
var len = sqrt(sqr(moveX) + sqr(moveY));
var nx = (len != 0) ? moveX / len : 0;
var ny = (len != 0) ? moveY / len : 0;


/// --- FOOT POSITsION ---
var footX = x;
var footY = y; // bottom of sprite

/// --- HORIZONTAL MOVE ---
if (nx != 0) {
    var newFootX = footX + nx * spd;
    if (collision_point(newFootX, footY, obj_floor, false, true)) {
        x += nx * spd;
        moved = true;
    }
}

/// --- VERTICAL MOVE ---
if (ny != 0) {
    var newFootY = footY + ny * spd;
    if (collision_point(footX, newFootY, obj_floor, false, true)) {
        y += ny * spd;
        moved = true;
    }
}

// --- FOOTSTEP SOUND CONTROL ---
if (moved) {
    if (footstep_sound == -1 || !audio_is_playing(footstep_sound)) {
        footstep_sound = audio_play_sound(footstep_loop, 1, true); // loop = true
    }
	
	image_speed = 1;
} else {
    if (footstep_sound != -1 && audio_is_playing(footstep_sound)) {
        audio_stop_sound(footstep_sound);
        footstep_sound = -1;
    }
	
	image_speed = 0;
}

