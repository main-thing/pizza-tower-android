//pal_swap_init_system(shd_pal_swapper)
if(!variable_instance_exists(obj_player1,"__checkedstartup")){
	scr_startupcommand()
	obj_player1.__checkedstartup = 1
}