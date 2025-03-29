sprite_index = ((sprite_exists(spr_pressed) && pressed) ? spr_pressed : mysprite)
image_blend = (pressed ? pressed_color : realcolor)
if(!global.movingvkeys) 
{	
	if(!buttonlockable) 
	{
		if (!is_string(keycode) && keycode != undefined && vkeychecker == -1) {
			vkeychecker = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode)
			//virtual_key_show(vkeychecker)
		}
		if (!is_string(keycode) && keycode2 != undefined && vkeychecker2 == -1) {
			vkeychecker2 = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode2)
			//virtual_key_show(vkeychecker2)
		}
	}
	if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color" || keycode == "grid") 
	{
		visible = false
	}
	global.selectedvbutton = undefined
	image_alpha = myusualalpha
}
if(!global.forceshowcontrols){
	if(!global.forcehidecontrols){
		if(!buttonlockable) {
			if (!is_string(keycode) && keycode != undefined && vkeychecker == -1) {
				vkeychecker = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode)
				//virtual_key_show(vkeychecker)
			}
			if (!is_string(keycode) && keycode2 != undefined && vkeychecker2 == -1) {
				vkeychecker2 = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode2)
				//virtual_key_show(vkeychecker2)
			}
		}
		if(keycode != "delete" && keycode != "addbutton" && keycode != "load" && keycode != "save" && keycode != "color" && keycode != "grid")
			visible = true
	} else {
		if(!buttonlockable) {
			if(vkeychecker > -1) {
				//virtual_key_hide(vkeychecker)
				virtual_key_delete(vkeychecker)	
				vkeychecker = -1
			}
			if(vkeychecker2 > -1) {
				//virtual_key_hide(vkeychecker2)
				virtual_key_delete(vkeychecker2)	
				vkeychecker2 = -1
			}
		}
		visible = false
	}
}