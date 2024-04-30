
function s_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	/// above sets line breaks
	textbox_sprite[page_number] = spr_dialogue_background;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	/// default pos of speaker
}

/// @param text
/// @param [character]
function s_text(_text)
{
	s_set_defaults_for_text(); // initialize based from script
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1
	{
		switch(argument[1])
		{
			case "npc 1":
			speaker_sprite[page_number] = spr_testDia;
			//textbox_sprite = noone; if you wanted to change the textbox sprite
			speaker_side[page_number] = 1; // change side of where they are talking
			break;
			case "npc 1 - happy":
			speaker_sprite[page_number] = spr_testDia;
			break;
		}
	}
	
	page_number++;
}


// @param option
// @param link_id
function s_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

function create_textbox(text_id)
{
	with(instance_create_depth(0,0, -9999999, obj_textbox))
	{
		s_game_text(text_id);
	}
} // clarify the text