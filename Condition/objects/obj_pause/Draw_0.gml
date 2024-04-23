/// @description Draws menu background
//draw_sprite_ext(sprite_index, image_index, x,y, width/sprite_width, height/sprite_height, 0, c_white, 0.5);
// Initial background

// draw options
//draw_set_font(fnt_game);
//draw_set_valign(fa_top);
//draw_set_halign(fa_left);

//for (var i = 0; i < option_length; i++)
//{
	//var _color = c_black;
	//if pos == i 
	//{
		//color = c_aqua;
	//}
	//draw_text_color(x+op_border,y+op_border + op_space*i,option[i], _color, _color, _color, _color, 0.5);
//}

/*Note from the programmer: Please be sure to implement this function properly.*/

    //draw_surface(pause_surf, 0, 0);
	/*
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_red, c_red, c_red, c_red, 1);
    draw_set_halign(fa_left);

*/

/// @description Basic Pause Functionalities

//gpu_set_blendenable(false);

if (pause)
{
	surface_set_target(application_surface);
		if(surface_exists(pause_surf)) draw_surface(pause_surf,0,0);
		else
		{
			
			pause_surf = surface_create(1920,1080);
			buffer_set_surface(pause_surf_buffer,pause_surf,0);
			
		}
		draw_set_alpha(0.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_red, c_red, c_red, c_red, 1);
		draw_set_halign(fa_left);
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape))
{
	if(!pause)
	{
		pause = true;
		
		audio_play_sound(snd_menu_click,0,false); // added sound
		
		instance_deactivate_all(true);
		
		pause_surf = surface_create(1920,1080);
		surface_set_target(pause_surf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
		pause_surf_buffer = buffer_create(1920 * 1080 * 4, buffer_fixed, 1);
		buffer_get_surface(pause_surf_buffer,pause_surf,0);
		
	}
	else
	{
		pause = false;
		audio_play_sound(snd_menu_click,0,false); // added sound
		instance_activate_all();
		if (surface_exists(pause_surf)) surface_free(pause_surf);
		if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
	}
}

gpu_set_blendenable(true);

// Code taken from Shaun Splading: https://www.youtube.com/watch?v=dNiLIX8jNOM 


















































