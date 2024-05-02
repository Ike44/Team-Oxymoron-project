depth = -9999;

/// @description Initial Text Part

textbox_width = 1240; // Maybe change this
textbox_height = 150; // also this
border = 8; 
line_sep = 28;
line_width = textbox_width - border*2;

textbox_sprite[0] = spr_dialogue_background;
textbox_image = 0;
textbox_image_speed = 0;
/// Textbox parameters

page = 0; // What page are we at in our dialogue
page_number = 0;
text[0] = ""; // Initialize text
text_length[0] = string_length(text[0]); // How long text can before going to the next line

char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;

draw_char = 0; // How many characters are being drawn
text_spd = 1.5;
/// The Text

option[0] = "";
option_link_id[0] = -1;
option_position = 0;
option_number = 0;
// Decisions

setup = false;
/// If the text is setup


s_set_defaults_for_text();
last_free_space = 0;

text_pause_timer = 0;
text_pause_time = 20;
//effects



/*Code taken from Peyton Burnham: https://www.youtube.com/watch?v=rEYSi0ahC5Q for the branching dialogue implementation*/


























