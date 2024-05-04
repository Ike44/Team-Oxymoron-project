/// @description The Puzzle Room Controller
depth = -999;

timer = 400; // Initialize timer
asecond = true; // Make sure the timer lasts a second
was_shown = false;
do_timer = true; // Operator to do the timer
active_trivia = false; // If trivia is being performed, default is false because the game does not start
correct_questions = 0;
current_question_index = 0;
is_answer_correct = false;
//correct_pages = 0;
text_id = "";

s_trivia_questions();

global.current_question_information = current_question_index;

current_question = questions[current_question_index].question;
current_choices = questions[current_question_index].choices;
correct_answer = questions[current_question_index].correct_answer;
answer = "Blank Answer";

//questions[irandom_range(1,20)]

























