draw_self();

if (isColliding) {
    var px = PlayerAction.x;
    var py = PlayerAction.y;
    draw_set_color(c_green);
    draw_text(px - 50, py - 32, "Press 'E' to interact");
}
