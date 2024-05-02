/// @description Player can move around and interact


switch(state)
{
	case (PLAYER_STATES.NORMAL):
	{
		var _best_distance = _max_inter_dist
		_interact = noone;
	
		with obj_interaction_parent
		{
			var _this_distance = point_distance(x,y,other.x,other.y);
		
			if _this_distance < _best_distance
			{
				_best_distance = _this_distance;
				other._interact = id;
			}
		}
	
		var _input_vect_x = (keyboard_check(ord("D")) - keyboard_check(ord("A"))),
		_input_vect_y = (keyboard_check(ord("S")) - keyboard_check(ord("W"))),
		_actual_speed = _walk_speed,
		_h_cancel = 1, _v_cancel = 1;
	
		hspeed = _input_vect_x * _actual_speed * _h_cancel; 

		vspeed = _input_vect_y * _actual_speed * _v_cancel;
		break;
	}
	case (PLAYER_STATES.PUZZLE):
	{
		if hspeed >= 1 {hspeed = 1};
		var _best_distance = _max_inter_dist
		_interact = noone;
	
		with obj_interaction_parent
		{
			var _this_distance = point_distance(x,y,other.x,other.y);
		
			if _this_distance < _best_distance
			{
				_best_distance = _this_distance;
				other._interact = id;
			}
		}
		
		
		break;
	}
} // Check to see if interactable object is within player



/*
Above code taken directly from the Finite State Machine Workshop
to determine player movement and if they can interact with the object.
*/

