/// @description Turns on/off the lever
create_textbox(text_id)
if(confirmSwitch)
{
	image_index +=1;
	with (designated_object)
	{
		if(show < 1)
		{
			show += 1;
		}
		else
		{
			show -= 1;
		} // Toggles between answers
	}
	confirmSwitch = false;
}
