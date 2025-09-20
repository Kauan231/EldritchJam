inventory = {}; // empty struct

show_debug_message(inventory);

// In Player Create Event
addItemToInventory = function(itemId) {
    inventory[itemId] = true;
};