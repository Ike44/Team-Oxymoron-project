/// @description 

/// Timer

draw_set_font(fnt_game); // Makes the font the game

draw_set_halign(fa_right); 
draw_set_valign(fa_top);
//aligns the timer

draw_text_transformed_colour(x,y,"Time Left:" + string(timer),3,3,0,c_lime,c_lime,c_lime,c_lime,1);
//Makes the actual timer itself
draw_text_transformed_colour(x,y+70,"Answered correctly: " + string(correct_questions) + "/10",3,3,0,c_gray,c_gray,c_gray,c_gray,1);
draw_text_transformed_colour(x,y+110,"Previous Answer: " + string(answer),3,3,0,c_purple,c_purple,c_purple,c_purple,1);

//How much score you need to satisfy the condition

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_color(room_width/2, room_height/2-160, string(current_question), 2, 2, 0, c_black,c_black,c_black,c_black,1);

























