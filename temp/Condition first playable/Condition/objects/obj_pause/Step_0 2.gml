/// @description Check if in menu

if (room == rm_menu)
{
	instance_destroy();
}

var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))
pos += _down - _up;
	
if (pos >= option_length) {pos=0};
if (pos < 0) {pos = option_length -1};


























