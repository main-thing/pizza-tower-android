if (!variable_instance_exists(self, "gamestartedlmao")) {
	if(!buttonlockable) {
		if (!is_string(keycode) && keycode != undefined) {
			vkeychecker = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode)
			//virtual_key_show(vkeychecker)
		}
		if (!is_string(keycode2) && keycode2 != undefined) {
			vkeychecker2 = virtual_key_add(bbox_left,bbox_top,bbox_right - bbox_left,bbox_bottom - bbox_top,keycode2)
			//virtual_key_show(vkeychecker2)
		}
	}
}
alarm[1] = 1