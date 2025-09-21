movSpeed = 4;
footstep_timer = 0;            // countdown timer for footsteps
footstep_cooldown = room_speed / 4; // adjust delay between steps

// --- FOOTSTEP SOUND CONTROL ---
footstep_loop = Steps;  // the footstep sound asset
footstep_sound = -1;    // initialize with -1, meaning "no sound playing"

inventory = {}; // empty struct

show_debug_message(inventory);

// In Player Create Event
addItemToInventory = function(itemId) {
    inventory[itemId] = true;
};