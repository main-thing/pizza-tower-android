if (instance_number(obj_hardmode) > 1)
	instance_destroy()
depth = -108
hsp = 0
vsp = 0
fake_y = y
random_max = 300
random_random = 120
random_buffer = (random_max + irandom_range((-((random_random + 1))), random_random))
content[0] = obj_cheeseslime
content[1] = obj_ninja
content[2] = obj_indiancheese
content[3] = obj_pizzagoblin
content[4] = obj_miniufo
content[5] = obj_pizzard
content[6] = obj_pizzaboy
content[7] = obj_rancher
content[8] = obj_tank
content[9] = obj_noisey
content[10] = obj_forknight
if(!variable_global_exists("hardmode_ghostsprite")){
	global.hardmode_ghostsprite = spr_snick_exe
}
sprite_index = global.hardmode_ghostsprite