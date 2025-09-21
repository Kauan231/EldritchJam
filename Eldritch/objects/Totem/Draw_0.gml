// Draw Event
if (isShooting) {
    draw_set_color(c_red);

    // direction from Totem to Boss
    var dir = point_direction(x+16, y+16, targetX+16, targetY+16);

    // half-width of beam at the Boss side
    var half_width = 20;

    // base corners near Boss
    var x1 = targetX+16 + lengthdir_x(half_width, dir + 90);
    var y1 = targetY+16 + lengthdir_y(half_width, dir + 90);

    var x2 = targetX+16 + lengthdir_x(half_width, dir - 90);
    var y2 = targetY+16 + lengthdir_y(half_width, dir - 90);

    // tip at Totem
    var x3 = x+16;
    var y3 = y+16;

    // draw filled triangle
    draw_triangle(x1, y1, x2, y2, x3, y3, false);

    draw_set_color(c_white);
}
