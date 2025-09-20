global.nextPlayerX = posX;
global.nextPlayerY = posY;

// --- String-based room change ---
switch(roomName) {
    case "Narthex": room_goto(Narthex); break;
    case "Nave": room_goto(Nave); break;
	case "Crossing": room_goto(Crossing); break;
	case "Chancel": room_goto(Chancel); break;
	case "Boss": room_goto(Boss); break;
    default: show_debug_message("Room not found: " + roomName);
}
