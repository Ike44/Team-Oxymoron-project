/// @description Creates and setup states

depth = -999;

enum PLAYER_STATES
{
	NORMAL, // The normal state
	DIALOGUE, // When the player is going through dialogue 
	PUZZLE, // When the player is in the trivia branch
	PLATFORMER,
	HUNT,
	BOSS
} // current player state

enum PLAYER_ANIMATION_STATES
{
	IDLE,
	RUNNING,
	JUMPING
}

state = PLAYER_STATES.NORMAL; // set the initial player state to normal
_interact = noone; // see if the player can interact with the object
targetEntrance = noone;
health = 25;
gravity_direction = 270;
lives = 4;
save_x = 0;
save_y = 0;

























