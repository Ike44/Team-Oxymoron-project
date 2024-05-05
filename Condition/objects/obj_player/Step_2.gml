/// @description Insert description here
// You can write your code in this editor
if(room == rm_puzzle || room = rm_platformer)
{
	if (vspeed < 0)
	{
		sprite_index = spr_player_jump	
	}
}

if hspeed != 0 && room != rm_platformer
{
		//we use the same sprite for left/right, but flipped
		sprite_index = spr_player_run;
		image_xscale = sign(hspeed)
}
else
{
	if(room != rm_platformer || room != rm_puzzle)
	{
		sprite_index = spr_player_idle;
	}
}



























