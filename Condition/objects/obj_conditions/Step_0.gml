/// @description 

if(keyboard_check_pressed(ord("P")))
{
	_condition_count++;
}


switch(room) // Check which room we are in, then see if the condition has been fufilled when the game ends
{
	case (rm_puzzle):
	{
			if(obj_puzzle_controller.correct_questions >= 10)
			{
				_condition_game_PUZZLE.isfufilled = true;
				if(_shut_up != true)
				{
					audio_play_sound(snd_condition_fufilled,1,false);
					obj_puzzle_controller.do_timer = false;
					_shut_up = true;
					create_textbox("Trivia Victory");
					if(instance_exists(obj_lever))
					{
						instance_destroy(obj_lever);
					}
					if(instance_exists(obj_README))
					{
						instance_destroy(obj_README);
					}
					with (instance_create_depth(992,864,0,obj_interaction_door))
					{
						destination = rm_main_hub;
						targetEntrance = roomhub_enter;
					}
					_condition_count++;
				}
			} // checks if 10 questions were answered correctly
			break;
	}
	case (rm_platformer):
	{
			if(score >= global.collect)
			{
				_condition_game_PLATFORMER.isfufilled = true;
				if(_shut_up_2 != true)
				{
					audio_play_sound(snd_condition_fufilled,1,false);
					obj_platformer_controller.do_timer = false;
					obj_platformer_controller.active_platformer = false;
					_shut_up_2 = true;
					create_textbox("Platformer Victory");
					if(instance_exists(obj_README))
					{
						instance_destroy(obj_README);
					}
					with (instance_create_depth(229,4032,0,obj_interaction_door))
					{
						destination = rm_main_hub;
						targetEntrance = roomhub_enter;
					}
					_condition_count++;
				}
			}
			break;
	}
	//case (rm_shoot):
	//	switch(_condition_game_HUNT.whichCondition)
	//	{
	//		case 1:
	//			if(obj_shoot_controller.kills >= _kill)
	//			{
	//				_condition_game_HUNT.isfufilled = true;
	//			}
	//			break;
	//		default:
	//			if(health > 10)
	//			{
	//				_condition_game_HUNT.isfufilled = true;
	//			}
	//			break;
	//	}
	//	break;
	case (rm_main_hub):
	{
		if(instance_exists(room_to_puzzle))
		{
			if(_condition_game_PUZZLE.isfufilled == true)
			{
				instance_destroy(room_to_puzzle);
			}
		}
		if(instance_exists(room_to_platformer))
		{
			if(_condition_game_PLATFORMER.isfufilled == true)
			{
				instance_destroy(room_to_platformer);
			}
		}
		if(instance_exists(obj_oon) && _condition_count < 2 && talked_to_oon == true)
			{
				obj_oon.text_id = "oon idle";
			}
		if(_condition_count >= 2 && _game_finished = false)
		{
			_game_finished = true;
			if(instance_exists(obj_oon))
			{
				obj_oon.text_id = "Oon Complete";
			}
			with(instance_create_depth(960,128,0,obj_interaction_door))
			{
				destination = rm_victory_screen;
			}
		}
		break;
	}
	case(rm_game_over):
	{
		if(instance_exists(obj_player))
		{
			instance_destroy(obj_player);
		}
		instance_destroy();
		break;
	}
	case(rm_victory_screen):
	{
		if(instance_exists(obj_player))
		{
			instance_destroy(obj_player);
		}
		instance_destroy();
		break;
	}
	default:
		break;
}




























