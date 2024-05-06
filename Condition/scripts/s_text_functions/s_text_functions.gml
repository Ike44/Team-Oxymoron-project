
function s_set_defaults_for_text()
{
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	/// above sets line breaks
	
	for (var _c = 0; _c < 999; _c++)
	{
		_color_1[_c, page_number] = c_black;
		_color_2[_c, page_number] = c_black;
		_color_3[_c, page_number] = c_black;
		_color_4[_c, page_number] = c_black;
	}
	///variables for every letter/character
	textbox_sprite[page_number] = spr_dialogue_background;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	/// default pos of speaker
}

///@param first_char
///@param last_char
///@param _color_1
///@param _color_2
///@param _color_3
///@param _color_4
/// text VFX
function s_text_color(_start, _end, _parameter_color_1,_parameter_color_2,_parameter_color_3,_parameter_color_4)
{
	for (var c = _start; c <= _end; c++)
	{
		_color_1[c, page_number-1] = _parameter_color_1;
		_color_2[c, page_number-1] = _parameter_color_2;
		_color_3[c, page_number-1] = _parameter_color_3;
		_color_4[c, page_number-1] = _parameter_color_4;
	}
}

/// @param text
/// @param [character]
/// @param flag for dialogue is complete
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
			case "mark":
				speaker_sprite[page_number] = spr_player_idle;
				break;
			case "oon":
				speaker_sprite[page_number] = spr_oon;
				speaker_side[page_number] = -1;
				break;
			default:
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

function s_dialogue_defualt()
{
	draw_set_font(fnt_dialogue); //set font
	draw_set_color(c_black);// set color
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}