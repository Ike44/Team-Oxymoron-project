
function s_intialize_conditions()
{
	if(irandom(1) == 1)
	{
		s_text("The first condition shall be to answer as many questions correctly!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
	else
	{
		s_text("The first condition shall be to organize the pages correctly!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
	if(irandom(1) == 1)
	{
		var collect = irandom_range(5,10);
		obj_conditions._collect = collect;
		s_text("The second condition shall be to collect " + string(collect) + " the tokens in the dungeon!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
	else
	{
		s_text("The second condition shall be to reach the end of the dungeon!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
	if(irandom(1) == 1)
	{
		var kill = irandom_range(10,20);
		obj_conditions._kill = kill;
		s_text("The final condition shall be to kill " + string(kill) + " enemies in the subspace!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
	else
	{
		s_text("The final condition shall be to be above 10 health!");
			s_text_color(32,92,c_red,c_red,c_red,c_red);
	}
}