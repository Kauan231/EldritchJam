/// --- VARIABLES ---
var target = instance_nearest(x, y, PlayerAction); // find player
var spd = 1.5; // slime movement speed

if (target != noone) {
    // Direction vector to player
    var dx = target.x - 16 - x;
    var dy = target.y - 32 - y;
    
    // Normalize for diagonal movement
    var len = sqrt(sqr(dx) + sqr(dy));
    var nx = (len != 0) ? dx / len : 0;
    var ny = (len != 0) ? dy / len : 0;
    
    // Foot position (bottom center)
    var footX = x;
    var footY = y + sprite_height / 2;
    
    var moved = false;
    
    // --- HORIZONTAL MOVE ---
    if (nx != 0) {
        var newFootX = footX + nx * spd;
        if (collision_point(newFootX, footY, obj_floor, false, true)) {
            x += nx * spd;
            moved = true;
        }
    }
    
    // --- VERTICAL MOVE ---
    if (ny != 0) {
        var newFootY = footY + ny * spd;
        if (collision_point(footX, newFootY, obj_floor, false, true)) {
            y += ny * spd;
            moved = true;
        }
    }
  
    // --- ANIMATION ---
    if (moved) image_speed = 1;
    else image_speed = 0;
}
