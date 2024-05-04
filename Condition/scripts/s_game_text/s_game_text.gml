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
			s_text("So I take it that you have come here, along with many others, to request my magic?", "oon");
				s_option("Yes", "oon intro - yes");
				s_option("No", "oon intro - no");
				break;
			case "oon intro - yes":
				s_text("Hi, I'm Mark. I came here to revive my friend, Simon, who has died because they have fallen from the war.", "mark");
				s_text("I heard there was a powerfu-", "mark");
				s_text("Yeah Yeah been there done that. Same bogus as they all say these days. Wealth, power, knowledge, and love. Something special for someone's desires.","oon");
				s_text("Maybe if someone managed to kill me I would understand their hardships.","oon");
				s_text("........","oon")
				s_text("Well in any case, let's play a game to entertain me then. I have some conditions for you to fufill if you truly desire someone back from the dead.", "oon");
				s_text("Allow me to present them.")
				s_intialize_conditions();
				s_text("........","oon");
				s_text("The third one is a joke.","oon");
				s_text("I will give you 4 chances in total. You may fufill either one first in order to gain my trust.","oon");
				s_text("Should you... fail a room I will remove a chance and you are to proceed to the next one. No judgments until the end, of course.", "oon");
				s_text("Instructions are provided on the books on how the room works.", "oon");
				s_text("I hope you are entertaining and wish you *sigh* the best of luck.", "oon");
				//obj_player.state = PLAYER_STATES.NORMAL;
				obj_oon.text_id = "oon idle";
				break;
			case "oon intro - no":
				game_restart(); // restart the game if you select no, meaning you do not want to fufill his conditions.
				break;
		case "oon idle":
			s_text("Well, off you go then. The doors are behind you to go through", "oon");
			break;
		case "room puzzle 1":
			s_text("How to play: Trivia room");
			s_text("Simply hit what answer do you think is correct via the designated button when the question is presented");
			s_text("Should you get a question wrong, your health will be decreased and reaching a health of 0 will remove a chance.");
			s_text("Always try to answer to the best of your knowledge.");
			s_text("There are 20 total questions, but you are to, again, answer only 10 correctly. Questions may be repeated.");
			s_text("GLHF, Oon.");
			s_text("Refer back here if needed");
			s_text("The first correct answer to the question is A");
			break;
		case "Puzzle Answer - A":
			s_text("Confirm answer?")
				s_option("Yes", "Puzzle A - Check Answer");
				s_option("No", "Decline Answer");
			break;
			case "Puzzle A - Check Answer":
				s_text("Alright let's see it");
				obj_lever_A.alarm[1] = 1;
				break;
		case "Puzzle Answer - B":
			s_text("Confirm answer?")
				s_option("Yes", "Puzzle B - Check Answer");
				s_option("No", "Decline Answer");
			break;
			case "Puzzle B - Check Answer":
				s_text("Alright let's see it");
				obj_lever_B.alarm[1] = 1;
				break;
		case "Puzzle Answer - C":
			s_text("Confirm answer?")
				s_option("Yes", "Puzzle C - Check Answer");
				s_option("No", "Decline Answer");;
			break;
			case "Puzzle C - Check Answer":
			    s_text("Alright let's see it");
				obj_lever_C.alarm[1] = 1;
				break;
		case "Puzzle Answer - D":
			s_text("Confirm answer?")
				s_option("Yes", "Puzzle D - Check Answer");
				s_option("No", "Decline Answer");
			break;
			case "Puzzle D - Check Answer":
				s_text("Alright let's see it");
				obj_lever_D.alarm[1] = 1;
				break;
		case "Decline Answer":
			s_text("Take your time.");
			break;
		case "Trivia Correct":
			s_text("...");
			s_text("That is the correct answer! Good job!");
			break;
		case "Trivia Incorrect":
			s_text("...");
			s_text("That is the incorrect! A shame.");
			break;
		case "Trivia Victory":
			s_text("Congrats. You have completed the trivia condition.");
			break;
		case "Talk to oon":
			s_text("Maybe I should talk to Oon first...");
			break;
		default:
			s_text("Huh I don't have any dialogue");
			break;
	}
}