if(global.forceshowcontrols || !global.forcehidecontrols)
{
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self))
	{
		if(keycode == "edit")
		{
			global.movingvkeys = !global.movingvkeys
			if(!global.movingvkeys)
				virtual_key_save()
		}
		if(!global.movingvkeys)
		{
			switch(keycode)
			{
				case "debug":
					dwnxed = get_string_async("Debug ( help )", nejdmsx)
				break
			}
		}
		else
		{
			switch(keycode)
			{
				case "addbutton":
					hduei = get_string_async("Choose button ( up, down, left, right, up+left, up+right, down+left, down+right, shift, z, x, c, shift_dash_lock, escape, shoot, debug, bind <value>, joystick)", nejdmsx)
				break
				case "delete":
					if(instance_exists(global.selectedvbutton))
						instance_destroy(global.selectedvbutton)
				break
				case "load":
					var temp_text = clipboard_get_text()
					djoiksa = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]", ((clipboard_has_text() && (string_pos("[", temp_text) == 1)) ? temp_text : ""))
				break
				case "save":
					virtual_key_save("controls")
				break
				case "color":
					var joystick_text = (global.selectedvbutton != undefined && global.selectedvbutton.keycode == "joystick") ? " stick_color <red> <green> <blue>, stick_sprite <sprite name>, stick_scale <int / float>, stick_scale_x <int / float>, stick_scale_y <int / float>,, stick_deadzone_x <int / float>, stick_deadzone_y <int / float>," : ""
					ndskld = get_string_async("edit selected button(color <red> <green> <blue>, pressed_color <red> <green> <blue>, sprite <sprite name>," + joystick_text + " scale <int / float>, scale_x <int / float>, scale_y <int / float>, alpha <int / float>, image_speed <int / float>, framenumber <int>, gridsize <int / float>)", nejdmsx)
				break
				case "grid":
					global.vkeysgridmode = !global.vkeysgridmode
					pressed = global.vkeysgridmode
				break
			}
		}
	}
}