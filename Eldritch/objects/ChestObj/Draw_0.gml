draw_self();

if (isColliding) {
    var px = PlayerAction.x;
    var py = PlayerAction.y;

    var msg = "Press 'E' to interact";
    var tw = string_width(msg);
    var th = string_height(msg);

    // Caixa atrás do texto
    draw_set_color(c_black);
    draw_rectangle(px + 48, py - 20, px + 48 + tw + 4, py - 20 + th + 4, false);

    // Texto por cima
    draw_set_color(c_lime);
    draw_text(px + 50, py - 16, msg);
}
