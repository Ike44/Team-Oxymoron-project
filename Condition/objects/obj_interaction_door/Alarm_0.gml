/// @description Makes you go to destination
event_inherited();

if destination == noone
{
	//insert blank door dialogue here
}
else
{
	room_goto(destination);
}

