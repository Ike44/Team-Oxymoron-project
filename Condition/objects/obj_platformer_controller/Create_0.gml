/// @description The Platformer Room Controller

timer = 400; // Initialize timer
asecond = true; // Make sure the timer lasts a second
do_timer = true; // Operator to do the timer
active_platformer = true; // If platformer is being performed, default is false because the game does not start
score = 0;
has_spawned = false;
hit_goal = false;

location[0] = 
{
	x_pos: 288,
	y_pos: 2336
}
location[1] = 
{
	x_pos: 5408,
	y_pos: 3904
}
location[2] = 
{
	x_pos: 5472,
	y_pos: 1760
}
location[3] = 
{
	x_pos: 288,
	y_pos: 288
}

random_location_initiate = irandom_range(0,3);
random_location_x = location[random_location_initiate].x_pos;
random_location_y = location[random_location_initiate].y_pos;




























