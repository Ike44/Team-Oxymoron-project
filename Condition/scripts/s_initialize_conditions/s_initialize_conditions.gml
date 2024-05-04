
function s_intialize_conditions()
{
	s_text("The first condition shall be to answer as many questions correctly!");
	s_text_color(32,92,c_red,c_red,c_red,c_red);
	var collect = irandom_range(5,10);
	obj_conditions._collect = collect;
	s_text("The second condition shall be to collect " + string(collect) + " the tokens in the dungeon!");
	s_text_color(32,92,c_red,c_red,c_red,c_red);
	s_text("The final condition shall be to be above 10 health!");
	s_text_color(32,92,c_red,c_red,c_red,c_red);
}