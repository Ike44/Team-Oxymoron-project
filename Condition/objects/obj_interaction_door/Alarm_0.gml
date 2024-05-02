/// @description Makes you go to destination
event_inherited();

if destination == rm_blank_door
{
	//insert blank door dialogue here
}
else
{
	obj_player.targetEntrance = targetEntrance;
	obj_player.state = PLAYER_STATES.NORMAL; // Will make the player go to original state after entering
	audio_play_sound(snd_door_open,0,false); // Play door open sound
	room_goto(destination); // Goes to destination based on variable
} // Do I need to explain what the function does?

// Currently since obj_player is persistent, the door will put the player in the same place. Needs to be fixed.

