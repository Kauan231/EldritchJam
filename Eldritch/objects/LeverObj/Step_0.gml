// Step Event

// Decrement timer if > 0
if (countdown_timer > 0) {
    countdown_timer--;
}

// Activation logic
if (isLeverActive && countdown_timer <= 0) {
    // Lever just activated
    sprite_index = LeverActive;

    // Start cooldown
    countdown_timer = room_speed * 2; // 2 seconds cooldown
}
else if (countdown_timer > 0) {
    // Lever is in cooldown, keep active sprite
    sprite_index = LeverActive;
}
else {
    // Idle state
    sprite_index = Lever;
}
