/// @description increments score by 1

if(answer == correct_answer)
{
	text_id = "Trivia Correct";
	correct_questions++;
}
else
{
	text_id = "Trivia Incorrect";
	health--;
}
if(correct_questions < 10)
{
	create_textbox(text_id);
}
answer = "Blank Answer";
	was_shown = true;

	



























