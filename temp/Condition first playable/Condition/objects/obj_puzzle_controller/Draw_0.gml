/// @description 

/// Timer

draw_set_font(fnt_game); // Makes the font the game

draw_set_halign(fa_right); 
draw_set_valign(fa_right);
//aligns the timer

draw_text_transformed_colour(x,y,"Time Left:" + string(timer),5,5,0,c_lime,c_lime,c_lime,c_lime,1);
//Makes the actual timer itself
draw_text_transformed_colour(x,y+100,"Score: " + string(score) + "/1",5,5,0,c_black,c_black,c_black,c_black,1);

























