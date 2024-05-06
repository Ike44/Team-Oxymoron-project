/// @description Spawns enemies

with(instance_create_depth(3072,3200,0,obj_enemy))
{
	path_start(path_ghost_1,4,path_action_reverse,true);
}
with(instance_create_depth(1984,2048,0,obj_enemy))
{
	path_start(path_ghost_2,4,path_action_reverse,true);
}
with(instance_create_depth(2432,480,0,obj_enemy))
{
	path_start(path_ghost_3,4,path_action_restart,true);
}





























