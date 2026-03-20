//lose a life but not if you jump above the screen
if (y > 0){
	o_games.player1_lives -= 1;
	y = -100;
	x = xstart;
} 