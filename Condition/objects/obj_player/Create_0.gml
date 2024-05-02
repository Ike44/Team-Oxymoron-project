/// @description Creates and setup states

enum PLAYER_STATES
{
	NORMAL, // The normal state
	PLATFORMER, // The platformer state
	DIALOGUE, // When the player is going through dialogue 
} // current player state

state = PLAYER_STATES.NORMAL; // set the initial player state to normal
_interact = noone; // see if the player can interact with the object
targetEntrance = noone;



//platformer related
spd = 4;
xSpeed = 0;
ySpeed = 0;





















