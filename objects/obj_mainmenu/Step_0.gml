if (!instance_exists(obj_option))
{
    scr_getinput()
    if (!instance_exists(obj_fadeout))
    {
		if(!newstuff){
	        var _input = (key_down2 - key_up2)
	        selected_option += _input
	        if (_input != 0)
	            scr_soundeffect(sfx_step)
	        if (selected_option > max_options)
	            selected_option = 0
	        else if (selected_option < 0)
	            selected_option = max_options
		}
		if(newstuff){
	        if (key_slap){
	            scr_soundeffect(sfx_enemyprojectile)
				newstuff = 0
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
	if(!newstuff){
		if (key_jump2 && prev_key_jump2 != key_jump2) 
		{
			if(selected_option == 0){
				instance_create(x, y, obj_levelselect)
				instance_destroy()
			}
			if(selected_option == 1){
				newstuff = 1
			}
			if(selected_option == 2){
				instance_create(x, y, obj_pausefadeout)
			}
		}
	}
	prev_key_jump2 = key_jump2
}
if(room == rm_levelselect){
	if(newstuff){
		var lay_id = layer_get_id("Assets_1");
		layer_set_visible(lay_id, false);
	} else {
		var lay_id = layer_get_id("Assets_1");
		layer_set_visible(lay_id, true);
	}
}