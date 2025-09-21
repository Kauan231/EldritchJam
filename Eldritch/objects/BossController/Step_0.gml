var allLeversActive = true;
for(var i=1; i<4; i++) {
	if(leversActive[i] == false) {
		allLeversActive = false
	}
}

if(allLeversActive) {
	for(var i=1; i<4; i++) {
		leversActive[i] = false
	}
	
	var allTotems = instance_number(Totem); // Get the total number of instances of obj_Enemy
	for (var i = 0; i < allTotems; i++) {
	    var current_totem = instance_find(Totem, i);
		current_totem.shootBean = true;
	}
	
	var allLeversObj = instance_number(LeverObj); // Get the total number of instances of obj_Enemy
	for (var i = 0; i < allLeversObj; i++) {
	    var current_lever = instance_find(LeverObj, i);
		current_lever.isLeverActive = false;
	}
}
