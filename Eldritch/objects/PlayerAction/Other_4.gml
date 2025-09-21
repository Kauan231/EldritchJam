if (variable_global_exists("nextPlayerX") && variable_global_exists("nextPlayerY")) {
    x = global.nextPlayerX;
    y = global.nextPlayerY;
}

var count = instance_number(Totem);
for (var i = 0; i < count; i++) {
    var inst = instance_find(Totem, i);
    if(i > numberOfGems) {
		instance_destroy(inst)
	}
}