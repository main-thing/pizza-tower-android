if (self.keycode == "addbutton") {
	var i_d = ds_map_find_value(async_load, "id");
	if i_d == hduei {
		if ds_map_find_value(async_load, "status") {
			if ds_map_find_value(async_load, "result") != "" {
				nejdmsx = ds_map_find_value(async_load, "result")
			}
		}
		var instance = undefined
		if (string_pos("bind", string_lower(self.nejdmsx)) == 1) {
			var commands = string_delete(self.nejdmsx,1,5)
			var data = {
				keycode: "bind",
				keycode2: commands,
				mysprite: spr_button_debug
			}
			data.forceshowbind = (string_pos("togglebinds", data.keycode2) == 1)
			instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, data)
			with(instance)
				event_perform(ev_mouse, ev_global_left_button)
			return;
		}
		switch (string_lower(string(self.nejdmsx))) {
			case "up":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					mysprite: spr_virtual_controller
				})
			break
			case "down":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					mysprite: spr_virtual_controller,
					image_angle: 180
				})
			break
			case "left":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 90
				})
			break
			case "right":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -90
				})
			break
			case "up left":
			case "upleft":
			case "up+left":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					keycode2: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 45
				})
			break
			case "up right":
			case "upright":
			case "up+right":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					keycode2: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -45
				})
			break
			case "down left":
			case "downleft":
			case "down+left":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					keycode2: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 135
				})
			break
			case "down right":
			case "downright":
			case "down+right":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					keycode2: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -135
				})
			break
			case "z":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("Z"),
					mysprite: spr_button_z_big
				})
			break
			case "x":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("X"),
					mysprite: spr_button_x_big
				})
			break
			case "c":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("C"),
					mysprite: spr_button_c_big
				})
			break
			case "shift":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_shift,
					mysprite: spr_button_shift_big
				})
			break
			case "shift_dash_lock":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					buttonlockable: true,
					keycode: vk_shift,
					mysprite: spr_button_shift_big,
					spr_pressed: spr_button_shift_big,
					pressed_color: make_color_rgb(255, 0, 0)
				})
			break
			case "escape":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_escape,
					mysprite: spr_button_escape_big
				})
			break
			case "shoot":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("A"),
					mysprite: spr_button_shoot_big
				})
			break
			case "debug":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: "debug",
					mysprite: spr_button_debug_big
				})
			break
			case "joystick":
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: "joystick",
					mysprite: spr_button_joystick_base,
					//image_xscale: 1.5,
					//image_yscale: 1.5
				})
				with(instance)
				{
					spr_joystick = spr_button_joystick
					radius = sprite_get_width(spr_button_joystick_base) / 2
				}
			break
			default:
				instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("Z"),
					mysprite: spr_button_z_big
				})
			break
		}
		with(instance)
			event_perform(ev_mouse, ev_global_left_button)
	}
}
if (self.keycode == "debug") {
	var i_d = ds_map_find_value(async_load, "id");
	if i_d == dwnxed {
		if ds_map_find_value(async_load, "status") {
			if ds_map_find_value(async_load, "result") != "" {
				nejdmsx = ds_map_find_value(async_load, "result")
				processcommand(nejdmsx)
			}
		}
	}
}
if (self.keycode == "color") {
	var i_d = ds_map_find_value(async_load, "id");
	if i_d == ndskld {
		if ds_map_find_value(async_load, "status") {
			if ds_map_find_value(async_load, "result") != "" {
				nejdmsx = ds_map_find_value(async_load, "result")
				processedit(nejdmsx)
			}
		}
	}
}

if (self.keycode == "load") {
	var i_d = ds_map_find_value(async_load, "id");
	if i_d == djoiksa {
		if ds_map_find_value(async_load, "status") {
			if ds_map_find_value(async_load, "result") != "" {
				nejdmsx = ds_map_find_value(async_load, "result")
			}
			virtual_key_load(nejdmsx)
		}
	}
}