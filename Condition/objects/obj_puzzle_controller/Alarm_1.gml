/// @description increments score by 1

if(answer == correct_answer)
{
	text_id = "Trivia Correct";
	audio_play_sound(snd_trivia_correct,1,false);
	correct_questions++;
}
else
{
	text_id = "Trivia Incorrect";
	audio_play_sound(snd_trivia_incorrect,1,false);
	health--;
}
if(correct_questions < 10)
{
	create_textbox(text_id);
}
answer = "Blank Answer";
	was_shown = true;

	



























