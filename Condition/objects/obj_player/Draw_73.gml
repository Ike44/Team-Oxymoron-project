/// @description draw prompt based on what they are interacting with

//if interaction exists, this will make the alert appear
with _interact
{
	if obj_player.state != PLAYER_STATES.DIALOGUE
	{
		if can_interact = true
		{
			draw_sprite(spr_alert,0,obj_player.x,obj_player.y-100);
			if keyboard_check_pressed(ord("E")) // Basic interaction if in proximity of an _interact
			{
				alarm[0] = 1;
			}
		}
	}
}