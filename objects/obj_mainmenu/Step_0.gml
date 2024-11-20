if (!instance_exists(obj_option))
{
    scr_getinput()
    if (!instance_exists(obj_fadeout))
    {
		if (!newstuff && !credits) 
		{
	        var _input = (key_down2 - key_up2)
	        selected_option += _input
	        if (_input != 0)
	            scr_soundeffect(sfx_step)
	        if (selected_option > max_options)
	            selected_option = 0
	        else if (selected_option < 0)
	            selected_option = max_options
		}
		if (newstuff || credits) 
		{
	        if (key_slap) 
			{
	            scr_soundeffect(sfx_enemyprojectile)
				if(newstuff) 
				{
					virtual_key_delete(up_key)
					virtual_key_delete(down_key)
					virtual_key_delete(close_key)
				}
				newstuff = 0
				if(credits)
					virtual_key_delete(close_key)
				credits = 0
				global.forcehidecontrols = 0
			}
		}
    }
    if instance_exists(obj_fadeout)
    {
        with (obj_player)
            image_index = 0
    }
    with (obj_player)
    {
        movespeed = 0
        hsp = 0
        vsp = 0
    }
	if (!newstuff && !credits){
		if (key_jump2 && prev_key_jump2 != key_jump2) 
		{
			if (selected_option == 0)
			{
				instance_create(x, y, obj_levelselect)
				instance_destroy()
			}
			if (selected_option == 1)
			{
				newstuff = 1
				global.forcehidecontrols = 1
				up_key = virtual_key_add(2, 388, 64, 64, vk_up)
				down_key = virtual_key_add(2, 452, 64, 64, vk_down)
				close_key = virtual_key_add(2356 * 0.01-16, 1080 * 0.02-16, 32, 32, ord("X"))
			}
			if (selected_option == 2)
			{
				credits = 1
				global.forcehidecontrols = 1
				close_key = virtual_key_add(2356 * 0.01-16, 1080 * 0.02-16, 32, 32, ord("X"))
			}
			if (selected_option == 3)
			{
				if(irandom_range(0,99))
				{
					discorddialogue = show_question_async("Do you really want to join the chaos of the discord?")
				} 
				else 
				{
					discorddialogue = show_question_async("Do you accept the terms and conditions of your cars warranty?")
				}
			}
		}
	} else {
		if (newstuff)
		{
			move = (key_up * -1 + key_down) * scrollspeed
			stringoffset -= move
		}
	}
	prev_key_jump2 = key_jump2
}
if(room == rm_levelselect){
	if(newstuff || credits){
		var lay_id = layer_get_id("Assets_1");
		layer_set_visible(lay_id, false);
	} else {
		var lay_id = layer_get_id("Assets_1");
		layer_set_visible(lay_id, true);
		stringoffset = 0
	}
	if(credits){
		var lay_id = layer_get_id("Backgrounds_1");
		layer_set_visible(lay_id, false);
		var lay_id = layer_get_id("Backgrounds_stillscroll");
		layer_set_visible(lay_id, true);
		//var lay_id = layer_get_id("Backgrounds_2");
		//layer_set_visible(lay_id, true);
	} else {
		var lay_id = layer_get_id("Backgrounds_1");
		layer_set_visible(lay_id, true);
		var lay_id = layer_get_id("Backgrounds_stillscroll");
		layer_set_visible(lay_id, false);
		//var lay_id = layer_get_id("Backgrounds_2");
		//layer_set_visible(lay_id, false);
	}
	if(newstuff){
		var lay_id = layer_get_id("Backgrounds_1");
		layer_set_visible(lay_id, false);
		var lay_id = layer_get_id("Backgrounds_2");
		layer_set_visible(lay_id, true);
	} else {
		var lay_id = layer_get_id("Backgrounds_1");
		layer_set_visible(lay_id, true);
		var lay_id = layer_get_id("Backgrounds_2");
		layer_set_visible(lay_id, false);
	
	}
}