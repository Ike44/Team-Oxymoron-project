/// @description 

if(timer <= 0)
{
	do_timer = false;
	lives--;
	obj_player.targetEntrance = roomhub_enter;
	room_goto(rm_main_hub);
} // Check to see if the timer has reached zero

if (asecond) and (do_timer)
{
	asecond = false;
	alarm[0] = 60; 
} // Calls alarm 0(see description)

//if (obj_letter_A.show == 1 and active_trivia)
//{
//	obj_letter_B.show = 2;
//	obj_letter_C.show = 2;
//	obj_letter_D.show = 2;
//	alarm[1] = 1;
//}

if(answer != "Blank Answer")
{
	alarm[1] = 1;
}

if(was_shown = true)
{
	was_shown = false;
	current_question_index = irandom_range(1,20);
	current_question = questions[current_question_index].question;
	current_choices = questions[current_question_index].choices;
	correct_answer = questions[current_question_index].correct_answer;
	global.current_question_information = current_question_index;
}

if(keyboard_check_pressed(vk_right))
{
	if(current_question_index != 20)
	{
		current_question_index++;
	}
	current_question = questions[current_question_index].question;
	current_choices = questions[current_question_index].choices;
	correct_answer = questions[current_question_index].correct_answer;
	global.current_question_information = current_question_index;
}
if(keyboard_check_pressed(vk_left))
{
	if(current_question_index != 1)
	{
		current_question_index--;
	}
	current_question = questions[current_question_index].question;
	current_choices = questions[current_question_index].choices;
	correct_answer = questions[current_question_index].correct_answer;
	global.current_question_information = current_question_index;
}

if( keyboard_check_pressed(vk_delete))
{
	correct_questions++;
}






















