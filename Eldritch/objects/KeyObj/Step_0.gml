// Movimento suave até targetX, targetY
x = lerp(x, targetX, 0.1);
y = lerp(y, targetY, 0.1);

// Se já chegou perto, trava no alvo
if (point_distance(x, y, targetX, targetY) < 1) {
    x = targetX;
    y = targetY;
}