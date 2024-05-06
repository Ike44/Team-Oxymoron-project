/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(ord("W"))
var _down = keyboard_check_pressed(ord("S"))
var accept_key = keyboard_check_pressed(vk_space)
pos += _down - _up;
	
if (pos >= option_length) {pos=0};
if (pos < 0) {pos = option_length -1};

if(accept_key)
{
	switch(pos)
	{
		case 0:
			game_restart();
			break;
		case 1:
			game_end();
			break;
		case 2:
			break;
		default:
			break;
	}
}



























