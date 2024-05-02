/// @description See more for details

switch(room)
{
	case (rm_puzzle):
	{
		_jump_height = -8;
		state = PLAYER_STATES.PUZZLE;
		
		if (keyboard_check(ord("A")) and !instance_place(x-_walk_speed+2,y,obj_block)) {
			x += -(_walk_speed);
		} // move left

		if (keyboard_check(ord("D")) and !instance_place(x+_walk_speed-2,y,obj_block)) {
			x += _walk_speed;
		}
		
		gravity = 0;
		
		if(keyboard_check(ord("W")))
		{
			if(instance_place(x,y+1,obj_block))
			{
				vspeed = _jump_height;
			}
		}
		
		if (instance_place(x,y+1, obj_block))
		{
			gravity = 0;
		}
		else
		{
			gravity = 0.20;
		}
		
		
		break;
	}
	default:
	{
		state = PLAYER_STATES.NORMAL;
		break;
	}
}

if(instance_exists(obj_textbox))
{
	state = PLAYER_STATES.DIALOGUE;
}


x = clamp(x, sprite_width/2 + 20, room_width-sprite_width/2 + 20); // x-axis - left and right
y = clamp(y, sprite_height/2- 20, room_height-sprite_height/2 - 20) // y-axis - top and bottom
//switch(state)
//{
//	case (PLAYER_STATES.NORMAL): //When they are in the hub
//	{
//		x = clamp(x, sprite_width/2 + 20, room_width-sprite_width/2 + 20); // x-axis - left and right
//		y = clamp(y, sprite_height/2- 20, room_height-sprite_height/2 - 20) // y-axis - top and bottom
//		break;
//	}
//	case (PLAYER_STATES.PUZZLE):
//	{
//		x = clamp(x, sprite_width/2 + 20, room_width-sprite_width/2 + 20);
//		y = clamp(y, sprite_height/2- 20, room_height-sprite_height/2 - 20);
//		break;
//	}
//}
// Taken directly from sidescrolling shooter workshop





























