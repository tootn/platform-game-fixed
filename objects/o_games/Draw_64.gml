for (var i = 0; i < player1_lives; i++) {
	var _x = camera_get_active().x;
	_x = 20 + 75 * i;
	var _y = 20;
	draw_sprite(slives, 0, _x, _y);
}