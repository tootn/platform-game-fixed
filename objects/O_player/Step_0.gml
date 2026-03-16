/// @decs core player logic

//get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);



//calculate movement
var _move = key_right - key_left;

hsp = _move *walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,o_wall)) && (key_jump)
{
	vsp = -jumpsp
}

//horizontal collision
if (place_meeting(x+hsp,y,o_wall))
{
	while (!place_meeting(x+sign(hsp),y,o_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;	
}
x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,o_wall))
{
	while (!place_meeting(x,y+sign(vsp),o_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;	
}
y = y + vsp;

//animation
if (!place_meeting(x,y+1,o_wall))
{
	sprite_index = jump;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;	
	}
	else
	{
		sprite_index = walk
	}
}	

if (hsp !=0) image_xscale = sign(hsp);