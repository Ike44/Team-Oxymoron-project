/// @description 

global.collect = 5;

_condition_count = 0; // How many Conditions have been fufilled?
_collect = 0;
_kill = 0;
_shut_up = false;
_shut_up_2 = false;
_game_finished = false;
obj_conditions.talked_to_oon = false;
audio_play_sound(snd_music,1,true);

_condition_game_PUZZLE =
{
	whichCondition: 0, //checks which condtion it is, default being 0
	isfufilled: false //checks if condition is fufilled in that room
};

_condition_game_PLATFORMER =
{
	whichCondition: 0, //checks which condtion it is, default being 0
	isfufilled: false //checks if condition is fufilled in that room
};

_condition_game_HUNT = 
{
	whichCondition: 0, //checks which condtion it is, default being 0
	isfufilled: false //checks if condition is fufilled in that room
};

///Initialize All The Conditions



















