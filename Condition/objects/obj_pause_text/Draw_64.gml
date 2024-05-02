/// @description draws pause function
draw_set_alpha(0.5);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(fnt_game);
draw_text_transformed_color(room_width/2,room_height/2,"PAUSED",2,2,0,c_blue,c_blue,c_blue,c_blue,1);
draw_text_transformed_color(room_width/2,room_height/2-40,"Unpause with the ESC key, hit SPACE to confirm action",2,2,0,c_white,c_white,c_white,c_white,1);

//draw options
draw_set_font(fnt_dialogue);


for (var i = 0; i < option_length; i++)
{
	var _color = c_black;
	if pos == i 
	{
		_color = c_yellow;
	}
	draw_text_color(room_width/2,room_height/2 + 40 + op_space*i,option[i], _color, _color, _color, _color, 1);
}

draw_set_halign(fa_left);
























