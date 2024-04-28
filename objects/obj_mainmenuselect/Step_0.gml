if (selected == 0)
{
	if ((obj_player1.key_right2) && optionselected < 2)
	{
		optionselected += 1
		scr_soundeffect(sfx_step)
	}
	else if (-obj_player1.key_left2 && optionselected > 0)
	{
		optionselected -= 1
		scr_soundeffect(sfx_step)
	}
	if ((obj_player1.key_jump) && optionselected == 0)
	{
		scr_soundeffect(sfx_collecttoppin)
		obj_file1.sprite_index = spr_file1confirm
		selected = 1
		alarm[0] = 50
	}
	if ((obj_player1.key_jump) && optionselected == 1)
	{
		scr_soundeffect(sfx_collecttoppin)
		selected = 1
		alarm[1] = 5
	}
	if ((obj_player1.key_jump) && optionselected == 2)
	{
		scr_soundeffect(sfx_collecttoppin)
		selected = 1
		alarm[2] = 5
	}
}
var lay_id = layer_get_id("Backgrounds_2")
var back_id = layer_background_get_id(lay_id)
layer_background_index(back_id, optionselected)
