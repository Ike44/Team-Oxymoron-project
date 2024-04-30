/// @description 

accept_key = keyboard_check_pressed(ord("E"));

var textbox_x = 0; // Change this
var textbox_y = 900; // and this

if (setup == false)
{
	setup = true;
	draw_set_font(fnt_dialogue); //set font
	draw_set_color(c_black);// set color
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	// loop through the pages
	//page_number = array_length(text); redundant
	for(var _page_iteration = 0; _page_iteration < page_number; _page_iteration++)
	{
		text_length[_page_iteration] = string_length(text[_page_iteration]); // Find how many characters are on each page and store that number in the "text_length" array
		
		//get the x pos of the textbox
		//character on left
		text_x_offset[_page_iteration] = 80;
		portrait_x_offset[_page_iteration] = 280;
		//character on right
		if speaker_side[_page_iteration] == -1
		{
			text_x_offset[_page_iteration] = 580;
			portrait_x_offset[_page_iteration] = 1616;
		}
		
			// No character (centered textbox)
		if speaker_sprite[_page_iteration] == noone
		{
			text_x_offset[_page_iteration] = 370;
			// 370 for middle
			// 40 for left
			// 660 for right
		}
		
		
		//Cleaning up individual characters
		for (var c = 0; c < text_length[_page_iteration];c++)
		{
			var _char_pos = c+1;
			
			char[c, _page_iteration] = string_char_at(text[_page_iteration], _char_pos);
			
			//get current width of line
			var _text_up_to_char = string_copy(text[_page_iteration], 1, _char_pos);
			var _current_text_width = string_width(_text_up_to_char)- string_width(char[c,_page_iteration]);
			
			if char[c, _page_iteration] == " " {last_free_space = _char_pos + 1};
			
			//get line breaks
			if (_current_text_width - line_break_offset[_page_iteration]) > line_width
			{
				line_break_pos[line_break_num[_page_iteration], _page_iteration] = last_free_space; // records the break
				line_break_num[_page_iteration]++;
				var _text_up_to_last_space = string_copy(text[_page_iteration], 1, last_free_space); // get the string all the way to the width
				var _last_free_space_string = string_char_at(text[_page_iteration], last_free_space);
				line_break_offset[_page_iteration] = string_width(_text_up_to_last_space) - string_width(_last_free_space_string);
			}
		}
		
		//Getting each character's coordinates
		for (var c = 0; c < text_length[_page_iteration];c++)
		{
			var _char_pos = c+1;
			var _text_x = textbox_x+text_x_offset[_page_iteration] + border;
			var _text_y = textbox_y + border;
			//get current width of line
			var _text_up_to_char = string_copy(text[_page_iteration], 1, _char_pos);
			var _current_text_width = string_width(_text_up_to_char)- string_width(char[c,_page_iteration]);
			var _text_line = 0;
			
			for (var _line_break = 0; _line_break < line_break_num[_page_iteration]; _line_break++)
			{
				if _char_pos >= line_break_pos[_line_break,_page_iteration]
				{
					var _string_copy = string_copy(text[_page_iteration], line_break_pos[_line_break,_page_iteration],(_char_pos-line_break_pos[_line_break,_page_iteration]));
					_current_text_width = string_width(_string_copy);
					
					_text_line = _line_break+1;
				}
			}
			
			//add to the x and y coords based on the new information
			char_x[c,_page_iteration] = _text_x + _current_text_width;
			char_y[c,_page_iteration] = _text_y + _text_line*line_sep;
		}
	}
	/// Going through the individual characters
}
/// Setup
if text_pause_timer <= 0
{
	if draw_char < text_length[page]
	{
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, text_length[page])
		var _check_char = string_char_at (text[page], draw_char);
		if _check_char == "."|| _check_char == ","
		{
			text_pause_timer = text_pause_time;
		}
		audio_play_sound(snd_menu_click,0,false);
	}
}
else 
{
	text_pause_timer--;
}
///typing the text

if(accept_key)
{
	//if typing is done
	if (draw_char == text_length[page])
	{
		//next page
		if (page < page_number -1)
		{
			page++;
			draw_char = 0;
		}
		//kill textbox
		else
		{
			if(option_number > 0)
			{
				create_textbox(option_link_id[option_position])
			}
			instance_destroy();
		}
	}
	else
	{
		draw_char = text_length[page];
	}
}
/// Go through the pages

var actual_textbox_x = textbox_x+text_x_offset[page];
var actual_textbox_y = textbox_y;
textbox_image += textbox_image_speed;
var textbox_sprite_width = sprite_get_width(textbox_sprite[page]);
var textbox_sprite_height = sprite_get_height(textbox_sprite[page]);
///Draw the textbox

if speaker_sprite[page] != noone
{
	sprite_index = speaker_sprite[page];
	if draw_char == text_length[page] {image_index = 0};
	var _speaker_x = textbox_x + portrait_x_offset[page];
	draw_sprite_ext(sprite_index,image_index,_speaker_x, textbox_y - 150,speaker_side[page],1,0,c_white,1);
}
///Draw the Speaker

draw_sprite_ext(textbox_sprite[page],textbox_image,actual_textbox_x,actual_textbox_y,textbox_width/textbox_sprite_width,textbox_height/textbox_sprite_height,0,c_white,1);
///Back of the textbox

if(draw_char == text_length[page] && page == page_number -1)
{
	
	//option selection
	option_position += keyboard_check(ord("S"))- keyboard_check(ord("W"));
	option_position = clamp(option_position, 0, option_number -1);
	
	var option_space = 35;
	var option_border = 20;
	for (var option_iteration = 0; option_iteration < option_number; option_iteration++)
	{
		var option_width = string_width(option[option_iteration]) + option_border*2;
		draw_sprite_ext(textbox_sprite[page],textbox_image,actual_textbox_x, actual_textbox_y - option_space*option_number + option_space*option_iteration, option_width/textbox_sprite_width, (option_space -1)/textbox_sprite_height, 0, c_white, 1);
		
		if option_position == option_iteration
		{
			draw_sprite(spr_arrow, 0, actual_textbox_x+option_width+ 25,actual_textbox_y - option_space*option_number + option_space*option_iteration +15)
		}
		
		//option text
		draw_text(actual_textbox_x + option_border, actual_textbox_y - option_space*option_number + option_space*option_iteration + 2, option[option_iteration])
	}
}
/// Options

//var _drawtext = string_copy(text[page],1,draw_char)
//draw_text_ext(actual_textbox_x + border,actual_textbox_y + border, _drawtext, line_sep, line_width); old version of draw the text

for (var c = 0; c < draw_char; c++)
{
	draw_text(char_x[c,page], char_y[c,page],char[c,page]);
}
///draw the text











