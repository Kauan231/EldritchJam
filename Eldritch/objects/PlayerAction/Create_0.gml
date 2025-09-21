movSpeed = 4;
footstep_timer = 0;            // countdown timer for footsteps
footstep_cooldown = room_speed / 4; // adjust delay between steps
isDead = false;
hasPlayedSound = false;

message = "HUMANITY IS DOOMED";
alpha = 0;
fade_in_speed = 0.01;
timer = 0;
flicker_timer = 0;
visible = true;


// --- FOOTSTEP SOUND CONTROL ---
footstep_loop = Steps;  // the footstep sound asset
footstep_sound = -1;    // initialize with -1, meaning "no sound playing"

inventory = {}; // empty struct
numberOfGems = 2;

show_debug_message(inventory);

// In Player Create Event
addItemToInventory = function(itemId) {
    inventory[itemId] = true;
};