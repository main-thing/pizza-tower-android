var _max_devices = 4; // who would do more than 4?
					  // TODO: Sync other stuff here.
if(buttonlockable || keycode == "bind"){
	for (var i = 0; i < _max_devices; i++)
	{
	    var _touch_x = device_mouse_x_to_gui(i);
	    var _touch_y = device_mouse_y_to_gui(i);
        
	    var _ui_at_pos = instance_position(_touch_x, _touch_y, self);
	    var _held = device_mouse_check_button_pressed(i, mb_left);
        
	    if (_ui_at_pos != noone && _held)
	    {
			if (buttonlockable && !global.movingvkeys) {
				if(!pressed){
					if(!is_string(keycode) && keycode != undefined) {
						keyboard_key_press(keycode)
					}
					if(!is_string(keycode2) && keycode2 != undefined) {
						keyboard_key_press(keycode2)
					}
					pressed = true
				} else if(pressed){
					if(!is_string(keycode) && keycode != undefined) {
						keyboard_key_release(keycode)
					}
					if(!is_string(keycode2) && keycode2 != undefined) {
						keyboard_key_release(keycode2)
					}
					pressed = false
				}
			}
			if (keycode == "bind") {
				if(global.forceshowcontrols || !global.forcehidecontrols){
					if (!global.movingvkeys) {
						if(global.showbinds){
							processcommand(keycode2,true)
						} else {
							if(string_pos("togglebinds",string_lower(string(keycode2))) != 0){
								processcommand(keycode2,true)
							}
						}
					}
				}
			}
	    }
	}
}