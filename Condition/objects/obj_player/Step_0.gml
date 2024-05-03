/// @description See more for details

switch(room)
{
	case (rm_puzzle):
	{
		_jump_height = -8;
		state = PLAYER_STATES.PUZZLE;
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

if(state == PLAYER_STATES.PLATFORMER){

	var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
	var jump = keyboard_check_pressed(vk_space);
	var onTheGround = place_meeting(x, y + 1, oWall);

	if (xDirection != 0) image_xscale = xDirection;

	xSpeed = xDirection * spd;
	ySpeed++;

	if (onTheGround) {
		//if (xDirection != 0) { sprite_index = sPlayerRun_strip7; } 
		//else { sprite_index = sPlayerIdle_strip4; }

		if (jump) {
			ySpeed = -15;
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



