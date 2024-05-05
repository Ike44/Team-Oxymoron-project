/// @description See more for details



switch(room)
{
	case (rm_puzzle):
	{
		_jump_height = -4;
		state = PLAYER_STATES.PUZZLE;
		hspeed = clamp(hspeed, -8,8);
		
		if !instance_exists(obj_textbox)
		{
			var _input_vect_x = (keyboard_check(ord("D")) - keyboard_check(ord("A"))),
			_actual_speed = _walk_speed,
			_h_cancel = 1;
	
			hspeed = _input_vect_x * _actual_speed * _h_cancel; 
			if(keyboard_check(ord("W")))
			{
				if(instance_place(x,y+1,obj_block))
				{
					vspeed = _jump_height;
				}
			}// STOP MOVING WHEN THE DIALOGUE IS ON THE SCREEN AAAAAAAAAAAAAAAA
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
	case (rm_platformer):
	{
		_jump_height = -14;
		_walk_speed = 12;
		state = PLAYER_STATES.PLATFORMER;
		if (hspeed < 0)
		{
			hspeed = 0;
		}
		else
		{
			hspeed = 0;
		}
		
		if !instance_exists(obj_textbox)
		{
			if (keyboard_check(ord("A")) and !instance_place(x-_walk_speed+2,y,obj_block)) {
				x += -(_walk_speed);
			} // move left

			if (keyboard_check(ord("D")) and !instance_place(x+_walk_speed-2,y,obj_block)) {
				x += _walk_speed;
			}
			if(keyboard_check_pressed(ord("W")))
			{
				if(instance_place(x,y+1,obj_block))
				{
					vspeed = _jump_height;
				}
			}// STOP MOVING WHEN THE DIALOGUE IS ON THE SCREEN AAAAAAAAAAAAAAAA
			if(keyboard_check_pressed(ord("F")))
			{
				save_x = x;
				save_y = y;
			}
			if(keyboard_check_pressed(ord("R")))
			{
				obj_player.x = save_x;
				obj_player.y = save_y;
			}
		}
		
		
		
		if (instance_place(x,y+1, obj_block))
		{
			gravity = 0;
		}
		else
		{
			gravity = 0.30;
		}
		if(keyboard_check_pressed(ord("S")))
		{
			gravity = 20.0;
		}
		break;
	}
	default:
	{
		state = PLAYER_STATES.NORMAL;
		gravity = 0;
		break;
	}
}

if(instance_exists(obj_textbox))
{
	state = PLAYER_STATES.DIALOGUE;
}

if(health <= 0 && lives > 0)
{
	switch(room)
	{
		case rm_puzzle:
		{
			audio_play_sound(snd_lose_life,1,false);
			health = 2;
			lives--;
			break;
		}
		default:
		{
			audio_play_sound(snd_lose_life,1,false);
			health = 25;
			lives--;
			break;
		}
	}
}

if(lives == 0)
{
	room_goto(rm_game_over);
	instance_destroy();
}

if(keyboard_check_pressed(vk_home))
{
	create_textbox("skip intro");
}
if(keyboard_check_pressed(vk_end))
{
	health--;
}
if(keyboard_check_pressed(ord("O")))
{
	lives--;
}


x = clamp(x, 96/2 + 20, room_width-sprite_width/2 + 20); // x-axis - left and right
y = clamp(y, 96/2- 20, room_height-sprite_height/2 - 20) // y-axis - top and bottom
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





























