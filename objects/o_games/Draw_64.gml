for (var i = 0; i < player1_lives; i++) {
	var _x = camera_get_active().x;
	_x = 20 + 75 * i;
	var _y = camera_get_active().y;
	draw_sprite(slives, 0, _x, _y);
}