/// @description Player can move around and interact

if(state == PLAYER_STATES.NORMAL)
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
} // Check to see if interactable object is within player

if keyboard_check_pressed(ord("E"))
{
	if (state == PLAYER_STATES.NORMAL_INTERACT)
	{
		state = PLAYER_STATES.NORMAL
	}
	else if instance_exists(obj_interaction_parent)
	{
		state = PLAYER_STATES.NORMAL_INTERACT
		with (obj_interaction_parent)
		{
			alarm[0] = 1;
		}
	}
}

var _input_vect_x = (keyboard_check(vk_right) - keyboard_check(vk_left)),
	_input_vect_y = (keyboard_check(vk_down) - keyboard_check(vk_up)),
	_actual_speed = _walk_speed,
	_h_cancel = 1, _v_cancel = 1;
	
hspeed = _input_vect_x * _actual_speed * _h_cancel; 

vspeed = _input_vect_y * _actual_speed * _v_cancel;

/*
Above code taken directly from the Finite State Machine Workshop
to determine player movement and if they can interact with the object.
*/

