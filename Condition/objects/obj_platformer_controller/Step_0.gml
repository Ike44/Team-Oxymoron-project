/// @description 

if(timer <= 0)
{
	do_timer = false;
	lives--;
	obj_player.targetEntrance = roomhub_enter;
	room_goto(rm_main_hub);
} // Check to see if the timer has reached zero

if (asecond) and (do_timer)
{
	asecond = false;
	alarm[0] = 60; 
} // Calls alarm 0(see description)

if (!instance_exists(obj_coin) && active_platformer == true)
{
	obj_player.x = 229;
	obj_player.y = 4032;
	random_location_initiate = irandom_range(0,3);
	random_location_x = location[random_location_initiate].x_pos;
	random_location_y = location[random_location_initiate].y_pos;
	instance_create_depth(random_location_x,random_location_y,0,obj_coin);
}

if(!(instance_exists(obj_enemy)) && score >= 1)
{
	alarm[1] = 1;
}

if(keyboard_check_pressed(vk_up))
{
	score++;
}

















