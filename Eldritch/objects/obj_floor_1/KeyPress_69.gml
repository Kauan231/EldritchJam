if (isColliding) {
    var player = instance_find(PlayerAction, 0);
    
    if (player != noone && player.hasKey) {
        // Guarda posição e tamanho antes de destruir
        var _x = x;
        var _y = y-64;
        var _w = sprite_width * image_xscale;
        var _h = sprite_height * image_yscale;
        var _layer = layer;

        // Destroi a porta
        instance_destroy();

        // Cria o chão no mesmo lugar (com origem top-left)
        var newFloor = instance_create_layer(_x, _y, _layer, obj_floor);

        // Ajusta tamanho para igualar à porta
        newFloor.image_xscale = _w / newFloor.sprite_width;
        newFloor.image_yscale = _h / newFloor.sprite_height;

        // Corrige Y se ainda estiver deslocado
        newFloor.y = _y; // força mesmo Y exato da porta
    }
}
