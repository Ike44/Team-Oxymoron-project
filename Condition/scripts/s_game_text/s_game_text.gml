// @param text_id
/// Hosts all the dialogue for the game
function s_game_text(_text_id)
{
	switch(_text_id)
	{
		case "npc 1":
			s_text("Hello I need as really long absurd line. Please. Note. I. Am. Living.", "npc 1");
			s_text("Are you alive?");
				s_option("Unfortunately", "npc 1 - yes");
				s_option("No", "npc 1 - no");
			break;
			case "npc 1 - yes":
				s_text("Oh wow okay.");
				s_text("Thought you needed another page to check.");
				break;
			case "npc 1 - no":
				s_text("But you talked to me didn't you?");
				break;
		case "npc 2":
			s_text("Hello!");
			break;
		default:
			s_text("Huh I don't have any dialogue");
			break;
	}
}