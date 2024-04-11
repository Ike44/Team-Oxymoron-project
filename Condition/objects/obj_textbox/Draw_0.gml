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
	page_number = array_length(text);
	for(var i = 0; i < page_number; i++)
	{
		text_length[i] = string_length(text[i]); // Find how many characters are on each page and store that number in the "text_length" array
		
		//get the x pos of the textbox
			// No character (centered textbox)
		text_x_offset[i] = 30;
	}
}
/// Setup

if draw_char < text_length[page]
{
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page])
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
			instance_destroy();
		}
	}
	else
	{
		draw_char = text_length[page];
	}
}
/// Go through the pages

textbox_image += textbox_image_speed;
var textbox_sprite_width = sprite_get_width(textbox_sprite);
var textbox_sprite_height = sprite_get_height(textbox_sprite);
///Draw the textbox

draw_sprite_ext(textbox_sprite,textbox_image,textbox_x+text_x_offset[page],textbox_y,textbox_width/textbox_sprite_width,textbox_height/textbox_sprite_height,0,c_white,1);
///Back of the textbox

var _drawtext = string_copy(text[page],1,draw_char)
draw_text_ext(textbox_x+text_x_offset[page] + border,textbox_y + border, _drawtext, line_sep, line_width);
///draw the text











