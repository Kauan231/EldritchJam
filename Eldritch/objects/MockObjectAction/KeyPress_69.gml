if(isColliding) {
	if (instance_exists(PlayerAction)) {
	    PlayerAction.addItemToInventory(itemId);
	    show_debug_message(json_stringify(PlayerAction.inventory));
	}
}