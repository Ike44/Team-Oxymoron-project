/// @description 

switch(room) // Check which room we are in, then see if the condition has been fufilled when the game ends
{
	case (rm_puzzle):
		switch(_condition_game_PUZZLE.whichCondition)
		{
			case 1:
				if(obj_puzzle_controller.correct_pages >= 10)
				{
					_condition_game_PUZZLE.isfufilled = true;
				}
				break;
			default:
				if(obj_puzzle_controller.correct_questions >= 10)
				{
					_condition_game_PUZZLE.isfufilled = true;
				} // checks if 10 questions were answered correctly
				break;
		}
		break;
	case (rm_platformer):
		switch(_condition_game_PLATFORMER.whichCondition)
		{
			case 1:
				if(obj_platformer_controller.hit_goal == true)
				{
					_condition_game_PLATFORMER.isfufilled = true;
				}
				break;
			default:
				if(obj_platformer_controller.tokens >= _collect)
				{
					_condition_game_PLATFORMER.isfufilled = true;
				}
				break;
		}
		break;
	case (rm_shoot):
		switch(_condition_game_HUNT.whichCondition)
		{
			case 1:
				if(obj_shoot_controller.kills >= _kill)
				{
					_condition_game_HUNT.isfufilled = true;
				}
				break;
			default:
				if(health > 10)
				{
					_condition_game_HUNT.isfufilled = true;
				}
				break;
		}
		break;
	default:
		break;
}



























