/// @description 

if(timer <= 0)
{
	do_timer = false;
} // Check to see if the timer has reached zero

if (asecond) and (do_timer)
{
	asecond = false;
	alarm[0] = 60; 
} // Calls alarm 0(see description)

if (obj_letter_A.show == 1 and active_trivia)
{
	obj_letter_B.show = 2;
	obj_letter_C.show = 2;
	obj_letter_D.show = 2;
	alarm[1] = 1;
}




















