if(isColliding && hasItem) {
	if (instance_exists(PlayerAction)) {
		hasItem = false;
	    PlayerAction.addItemToInventory(itemId);
		instance_destroy()
	}
}