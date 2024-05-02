/// @description See more for details

if(state == PLAYER_STATES.NORMAL)
{
	x = clamp(x, sprite_width/2 + 20, room_width-sprite_width/2 + 20); // x-axis - left and right

	y = clamp(y, sprite_height/2- 20, room_height-sprite_height/2 - 20) // y-axis - top and bottom
}
// Taken directly from sidescrolling shooter workshop



























