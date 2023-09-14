if (mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)) {
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
				djoiksa = get_string_async("load buttons: load, default, [{\"x\": 928.0,...}]","")
			}
			if (keycode == "save") {
				virtual_key_save(true)
			}
			if (keycode == "color") {
				ndskld = get_string_async("edit selected button(color <red green blue>, sprite <sprite name>, scale <int / float>, alpha <int / float>, image_speed <int / float>)", nejdmsx)
			}
		}
		if (keycode == "debug") {	
			if (global.movingvkeys == 0) {
				dwnxed = get_string_async("Debug ( noclip, showcollisions <boolean>, panic <seconds>, oldassets <boolean>, enableranks <boolean>, hidetiles, showtiles, toggletiles, character <string>, player_set_state <states.state>,instance_set_variable <obj_> <type> <variablename> <new value>,global_set_variable <type> <variablename> <new value>,spawn <obj_> <optional distance>)", nejdmsx)
			}
		}
		if (keycode == "bind") {
			if (global.movingvkeys == 0) {
				processcommand(keycode2,true)
			}
		}
}
if (global.movingvkeys == 0) {
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
	if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color") {
		visible = false
	}
	global.selectedvbutton = undefined
	image_alpha = myusualalpha
	image_blend = realcolor
	pulse = 1
}
if (global.movingvkeys == 1) {
if (global.selectedvbutton == self) {
	if (pulse == 1) {
		image_alpha += 0.01
		image_blend = realcolor
		if (image_alpha == 1) {
			pulse = 0
		}
	}
	if (pulse == 0) {
		image_alpha -= 0.01
		image_blend = realcolor
		if (image_alpha == myusualalpha) {
			pulse = 1
		}
	}
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
	if (keycode != "delete" && keycode != "edit" && keycode != "addbutton" && keycode != "load" && keycode != "save" && keycode != "color") {
		if (mouse_check_button(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)) {
			if(global.vkcount == 0)	{
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
		if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color") {
			visible = true
		}
	}
	if (mouseon == 1 && mouse_check_button(mb_left) ){
		x = device_mouse_x_to_gui(0)
		y = device_mouse_y_to_gui(0)
	}
}
if(pressed) {
	image_blend = make_color_hsv(0,255,255)
} else {
	image_blend = realcolor
}