if(isColliding) {
	if (instance_exists(PlayerAction)) {
		hasItem = false;
		instance_destroy(inst.id)
		inst = noone;
	    PlayerAction.addItemToInventory(itemId);
	    show_debug_message(json_stringify(PlayerAction.inventory));
	}
}