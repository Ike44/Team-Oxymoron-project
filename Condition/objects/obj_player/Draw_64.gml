/// @description 

draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_font(fnt_game);
if(!instance_exists(obj_textbox))
{
	draw_text_transformed_color(55, 24, "Chances: " + string(lives),3,3,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_text_transformed_color(55, 84, "Health: " + string(health),3,3,0,c_blue,c_blue,c_blue,c_blue,1);
}
else
{
	draw_text_transformed_color(55, 24, "Chances: " + string(lives),3,3,0,c_blue,c_blue,c_blue,c_blue,0.1);
	draw_text_transformed_color(55, 84, "Health: " + string(health),3,3,0,c_blue,c_blue,c_blue,c_blue,0.1);
}


























