depth = -9999;

/// @description Initial Text Part

textbox_width = 1240; // Maybe change this
textbox_height = 150; // also this
border = 8; 
line_sep = 28;
line_width = textbox_width - border*2;

textbox_sprite = spr_dialogue_background;
textbox_image = 0;
textbox_image_speed = 0;
/// Textbox parameters

page = 0; // What page are we at in our dialogue
page_number = 0;
text[0] = "Hello world!"; // Beginning of text
text[1] = "Hello world (1)!";
text[2] = "Hello world (2)!";
text[3] = "The quick brown fox jumps over the lazy dog 123456789aaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaa";
text_length[0] = string_length(text[0]); // How long text can before going to the next line
draw_char = 0; // How many characters are being drawn
text_spd = 1.5;
/// The Text

setup = false;
/// If the text is setup

/*Code taken from Peyton Burnham: https://www.youtube.com/watch?v=rEYSi0ahC5Q for the branching dialogue implementation*/


























