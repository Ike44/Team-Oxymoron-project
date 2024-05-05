/// @description 

/// Timer

draw_set_font(fnt_game); // Makes the font the game

draw_set_halign(fa_right); 
draw_set_valign(fa_top);
//aligns the timer

draw_text_transformed_colour(1890,20,"Time Left:" + string(timer),3,3,0,c_lime,c_lime,c_lime,c_lime,1);
//Makes the actual timer itself
draw_text_transformed_colour(1890,90,"Coins Collected: " + string(score) + "/"+ string(global.collect),3,3,0,c_black,c_black,c_black,c_black,1);

























