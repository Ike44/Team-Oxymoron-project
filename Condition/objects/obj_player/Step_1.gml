/// @description Player can move around and interact

//Player state change
if(room == rm_platformer){
	state = PLAYER_STATES.PLATFORMER;
}


switch(state)
{
	case (PLAYER_STATES.NORMAL):
	{
		alarm[0] = 1;
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
	case (PLAYER_STATES.PLATFORMER):
	{
		var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		var jump = keyboard_check_pressed(vk_space);
		var onTheGround = place_meeting(x, y + 1, oWall);

		if (xDirection != 0) image_xscale = xDirection;

		xSpeed = xDirection * spd;
		ySpeed++;

		if (onTheGround) {
			//if (xDirection != 0) { sprite_index = sPlayerRun_strip7; } 
			//else { sprite_index = sPlayerIdle_strip4; }

			if (jump) {
				ySpeed = -25;
			}
		} else {
			//sprite_index = sPlayerJump;
		}

		if (place_meeting(x + xSpeed, y, oWall)) { 
	
			while (!place_meeting(x + sign(xSpeed), y, oWall)) {
				x += sign(xSpeed);
			}
	
			xSpeed = 0; 
		}

		x += xSpeed;


		if (place_meeting(x, y + ySpeed, oWall)) { 
	
			while (!place_meeting(x, y + sign(ySpeed), oWall)) {
				y += sign(ySpeed);
			}
	
			ySpeed = 0; 
		}

		y += ySpeed;
	}
} // Check to see if interactable object is within player

/*
Above code taken directly from the Finite State Machine Workshop
to determine player movement and if they can interact with the object.
*/

