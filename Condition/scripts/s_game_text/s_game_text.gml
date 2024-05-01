// @param text_id
/// Hosts all the dialogue for the game
function s_game_text(_text_id)
{
	switch(_text_id)
	{
		//case "npc 1":
			//s_text("Hello I need as really long absurd line. Please. Note. I. Am. Living.", "npc 1");
			//s_text("Are you alive?");
				//s_option("Unfortunately", "npc 1 - yes");
				//s_option("No", "npc 1 - no");
			//break;
			//case "npc 1 - yes":
				//s_text("Oh wow okay.");
				//s_text("Thought you needed another page to check.");
				//break;
			//case "npc 1 - no":
				//s_text("But you talked to me didn't you?");
				//break;
		/// Sample dialogue
		case "oon intro":
			obj_player.state = PLAYER_STATES.DIALOGUE;
			s_text("So I take it that you have come here, along with many others, to request my magic?", "oon");
				s_option("Yes", "oon intro - yes");
				s_option("No", "oon intro - no");
				break;
			case "oon intro - yes":
				s_text("I came here to revive my friend who has died because they have fallen from the war.", "mark");
				s_text("I heard there was a powerfu-", "mark");
				s_text("Yeah Yeah been there done that. Same bogus as they all say these days. Wealth, power, knowledge, and love. Something special for someone's desires.","oon");
				s_text("Maybe if someone managed to kill me I would understand their hardships.","oon");
				s_text("........","oon")
				s_text("Well in any case, let's play a game to entertain me then. I have some conditions for you to fufill if you truly desire someone back from the dead.", "oon");
				s_text("Allow me to present them.")
				s_intialize_conditions();
				s_text("........","oon");
				s_text("I will give you 4 chances in total. You may fufill these in any order and have to at least satisfy 2 of them to win me over. Yada Yada instructions are provided so on and so forth.","oon");
				s_text("I hope you are entertaining and wish you *sigh* the best of luck.", "oon");
				obj_player.state = PLAYER_STATES.NORMAL;
				obj_oon.text_id = "oon idle";
				break;
			case "oon intro - no":
				game_restart(); // restart the game if you select no, meaning you do not want to fufill his conditions.
				break;
		case "oon idle":
			s_text("Well, off you go then. The doors are behind you to go through");
			break;
		default:
			s_text("Huh I don't have any dialogue");
			break;
	}
}