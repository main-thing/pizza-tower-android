if(!instance_exists(obj_virtual_controller_manager)){
	instance_create(0,0,obj_virtual_controller_manager)
}
// these are for on-click stuff, so mouse event?
if(keycode == "edit" || keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color" || keycode == "grid" || keycode == "debug"){
	if (mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)) {
		if(global.forceshowcontrols || !global.forcehidecontrols){
			if (keycode == "edit") {
				if(global.movingvkeys == 1) {
					global.movingvkeys = 0
					virtual_key_save()
				} else {
					global.movingvkeys = 1
				}
			}
			if(global.movingvkeys){
				if (keycode == "addbutton") {
					hduei = get_string_async("Choose button ( up, down, left, right, up+left, up+right, down+left, down+right, shift, z, x, c, shift_dash_lock, escape, shoot, debug, bind <value> )", nejdmsx)
				}
				if (keycode == "delete") {
					if (global.selectedvbutton != undefined) {
						instance_destroy(global.selectedvbutton)
					}
				}
				if (keycode == "load") {
					if(clipboard_has_text()){
							if(string_pos("[",clipboard_get_text()) == 1) {
								djoiksa = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]",clipboard_get_text())
							} else {
								djoiksa = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]","")
							}
						} else{
							djoiksa = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]","")
						}
					}
				if (keycode == "save") {
					virtual_key_save("controls")
				}
				if (keycode == "color") {
					ndskld = get_string_async("edit selected button(color <red green blue>, sprite <sprite name>, scale <int / float>, alpha <int / float>, image_speed <int / float>, framenumber <int>, gridsize <int / float>)", nejdmsx)
				}
			
				if (keycode == "grid") {
					global.vkeysgridmode = !global.vkeysgridmode
					sprite_index = global.vkeysgridmode ? spr_pressed : mysprite
				}
			}
			if (keycode == "debug") {	
				if (global.movingvkeys == 0) {
					dwnxed = get_string_async("Debug ( help )", nejdmsx)
				}
			}
		}
	}
}
if(!global.movingvkeys) {
	if (vkeycounter == 0) {
		if(!buttonlockable) {
			if (!is_string(keycode) && keycode != undefined) {
				vkeychecker = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode)
				//virtual_key_show(vkeychecker)
			}
			if (!is_string(keycode) && keycode2 != undefined) {
				vkeychecker2 = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode2)
				//virtual_key_show(vkeychecker2)
			}
			vkeycounter++
		}
	}
	if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color" || keycode == "grid") {
		visible = false
	}
	global.selectedvbutton = undefined
	image_alpha = myusualalpha
	image_blend = realcolor
}
if(!global.forceshowcontrols){
	if(!global.forcehidecontrols){
		if (vkeycounter == 0) {
			if(!buttonlockable) {
				if (!is_string(keycode) && keycode != undefined) {
					vkeychecker = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode)
					//virtual_key_show(vkeychecker)
				}
				if (!is_string(keycode) && keycode2 != undefined) {
					vkeychecker2 = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode2)
					//virtual_key_show(vkeychecker2)
				}
			}
		}
		if(keycode != "delete" && keycode != "addbutton" && keycode != "load" && keycode != "save" && keycode != "color" && keycode != "grid")
			visible = true
	} else {
		if(!buttonlockable) {
			if(vkeychecker > -1) {
				//virtual_key_hide(vkeychecker)
				virtual_key_delete(vkeychecker)	
			}
			if(vkeychecker2 > -1) {
				//virtual_key_hide(vkeychecker2)
				virtual_key_delete(vkeychecker2)	
			}
		}
		vkeycounter = 0
		visible = false
	}
}
if(keycode == "bind"){
	if(string_pos("togglebinds",string(keycode2)) == 0){
		image_alpha = global.showbinds ? myusualalpha : 0
	} 
}
if (global.movingvkeys == 1) {
	image_alpha = myusualalpha
	if (global.selectedvbutton == self) {
		image_alpha = Wave(0.3, 1, 3, 0)
	}
	if(!buttonlockable) {
		if(vkeychecker > -1) {
			//virtual_key_hide(vkeychecker)
			virtual_key_delete(vkeychecker)	
		}
		if(vkeychecker2 > -1) {
			//virtual_key_hide(vkeychecker2)
			virtual_key_delete(vkeychecker2)	
		}
	}
	if (keycode != "delete" && keycode != "edit" && keycode != "addbutton" && keycode != "load" && keycode != "save" && keycode != "color" && keycode != "grid") {
		if (mouse_check_button(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)) {
			if(global.vkcount == 0)	{
				old_button_x = (x - device_mouse_x_to_gui(0))
                old_button_y = (y - device_mouse_y_to_gui(0))
				mouseon = 1
				global.selectedvbutton = self
			}
			global.vkcount ++
			if (global.vkcount > 1) {
				global.vkcount = 1
			}
		} 
		if (mouse_check_button_released(mb_left)) {
			mouseon = 0
			global.vkcount = 0
		}
	}
	vkeycounter = 0
	if (is_string(keycode)) {
		if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color" || keycode == "grid") {
			visible = true
		}
	}
	if (mouseon == 1 && mouse_check_button(mb_left) ){
		x = (old_button_x + device_mouse_x_to_gui(0))
        y = (old_button_y + device_mouse_y_to_gui(0))
		if(global.vkeysgridmode){
			x = round(x / global.vkeysgrid_size) * global.vkeysgrid_size
			y = round(y / global.vkeysgrid_size) * global.vkeysgrid_size
		}
	}
}
image_blend = pressed ? make_color_hsv(0,255,255) : realcolor