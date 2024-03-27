/// @description Makes you go to destination
event_inherited();

if destination == rm_blank_door
{
	//insert blank door dialogue here
}
else
{
	room_goto(destination);
}

