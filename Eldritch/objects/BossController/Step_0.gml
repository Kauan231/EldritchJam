var allLeversActive = true;

var allLeversObj = instance_number(LeverObj);
var player = instance_find(PlayerAction, 0);

for (var i = 0; i < allLeversObj; i++) {
	var current_lever = instance_find(LeverObj, i);
	if(current_lever.isLeverActive == false) {
		allLeversActive = false
	}
}

if(allLeversActive) {
	for(var i=1; i<4; i++) {
		leversActive[i] = false
	}
	
	var allTotems = instance_number(Totem);
	for (var i = 0; i < allTotems; i++) {
		var current_totem = instance_find(Totem, i);
		if(i > player.numberOfGems || player.numberOfGems == 0) {
			instance_destroy(current_totem)
		} else {
			current_totem.shootBean = true;
		}
	    
	}
	
	for (var i = 0; i < allLeversObj; i++) {
	    var current_lever = instance_find(LeverObj, i);
		current_lever.isLeverActive = false;
		current_lever.countdown_timer = room_speed * 2;
	}
}
