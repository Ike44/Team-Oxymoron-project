/// @description Basic Pause Functionalities

gpu_set_blendenable(false);

if (pause)
{
	surface_set_target(application_surface);
		if(surface_exists(pause_surf)) draw_surface(pause_surf,0,0);
		else
		{
			pause_surf = surface_create(1920,1080);
			buffer_set_surface(pause_surf_buffer,pause_surf,0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape))
{
	if(!pause)
	{
		pause = true;
		audio_play_sound(snd_menu_click,0,false); // added sound
		draw_set_color(c_black);
		draw_text(x,y,"HELP ME");
		
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


























