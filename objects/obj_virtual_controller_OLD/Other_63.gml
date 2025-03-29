if (self.keycode == "addbutton") {
	var i_d = ds_map_find_value(async_load, "id");
	if i_d == hduei {
		if ds_map_find_value(async_load, "status") {
			if ds_map_find_value(async_load, "result") != "" {
				nejdmsx = ds_map_find_value(async_load, "result")
			}
		}
		if (string_pos("bind", string_lower(self.nejdmsx)) == 1) {
			var commands = string_delete(self.nejdmsx,1,5)
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: "bind",
					keycode2: commands,
					mysprite: spr_button_debug
				})
			show_message_async(commands)
			return
		}
		switch (string_lower(string(self.nejdmsx))) {
			case "up":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					mysprite: spr_virtual_controller
				})
				break
			case "down":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					mysprite: spr_virtual_controller,
					image_angle: 180
				})
				break
			case "left":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 90
				})
				break
			case "right":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -90
				})
				break
			case "up left":
			case "upleft":
			case "up+left":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					keycode2: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 45
				})
				break
			case "up right":
			case "upright":
			case "up+right":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_up,
					keycode2: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -45
				})
				break
			case "down left":
			case "downleft":
			case "down+left":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					keycode2: vk_left,
					mysprite: spr_virtual_controller,
					image_angle: 135
				})
				break
			case "down right":
			case "downright":
			case "down+right":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_down,
					keycode2: vk_right,
					mysprite: spr_virtual_controller,
					image_angle: -135
				})
				break
			case "z":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("Z"),
					mysprite: spr_button_z,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "x":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("X"),
					mysprite: spr_button_x,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "c":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("C"),
					mysprite: spr_button_c,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "shift":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_shift,
					mysprite: spr_button_shift,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "shift_dash_lock":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					buttonlockable: true,
					keycode: vk_shift,
					mysprite: spr_button_shift,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "escape":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: vk_escape,
					mysprite: spr_button_escape,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			case "shoot":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("A"),
					mysprite: spr_button_shoot,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				global.key_shoot = ord("A")
				break
			case "debug":
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: "debug",
					mysprite: spr_button_debug,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
			default:
				instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, {
					keycode: ord("Z"),
					mysprite: spr_button_z,
					image_xscale: 1.5,
					image_yscale: 1.5
				})
				break
		}
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