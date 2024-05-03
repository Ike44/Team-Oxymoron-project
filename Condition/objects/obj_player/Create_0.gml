/// @description Creates and setup states

depth = -999;

enum PLAYER_STATES
{
	NORMAL, // The normal state
	PLATFORMER, // The platformer state
	DIALOGUE, // When the player is going through dialogue 
	PUZZLE, // When the player is in the trivia branch
	PLATFORMER,
	HUNT,
	BOSS
} // current player state

state = PLAYER_STATES.NORMAL; // set the initial player state to normal
_interact = noone; // see if the player can interact with the object
targetEntrance = noone;
health = 25;
gravity_direction = 270;
lives = 4;


//platformer related
spd = 4;
xSpeed = 0;
ySpeed = 0;





















