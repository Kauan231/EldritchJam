var player = instance_find(PlayerAction, 0);

var allTotems = instance_number(Totem);

show_debug_message( player.numberOfGems)
for (var i = allTotems - 1; i >= 0; i--) {
    var current_totem = instance_find(Totem, i);
    if (i >= player.numberOfGems) {
        instance_destroy(current_totem);
    }
}
