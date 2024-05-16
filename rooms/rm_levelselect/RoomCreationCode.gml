//pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER WESTERN BUILD V3"
with (obj_player)
{
	x = -100
	y = -100
	state = states.titlescreen
}
global.forcehidecontrols = false
var file = file_text_open_write(working_directory + "crashcount.txt")
file_text_write_string(file,"0")
file_text_close(file)