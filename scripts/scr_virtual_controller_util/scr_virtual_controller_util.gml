//TODO: READ FROM AN EXTERNAL LANGUAGE FILE SO PEOPLE CAN MAKE CUSTOM LANGAUAGES FOR TEXT HERE.
function processcommand(commandstring, silentcommand = false, is_trigger = false)
{
	if(PRE_2023_GM)
	{
		var _string = _string_trim(commandstring);
		if(ENABLE_STARTUP_COMMANDS)
		{
			if(string_pos("startupcommand", _string) == 1 || string_pos("gml", _string) == 1)
				return docommand(_string, silentcommand, is_trigger)
		}
		
		if(string_pos(";", _string) != 0) 
		{
			var _commands = _string_split(_string + ";", ";");
			for(var i = 0; i < array_length(_commands); i++)
				docommand(_commands[i], silentcommand, is_trigger);
		}
		else 
			docommand(_string, silentcommand, is_trigger);
	}
	else
	{
		var _string = string_trim(commandstring);
		if(ENABLE_STARTUP_COMMANDS)
		{
			if(string_pos("startupcommand", _string) == 1 || string_pos("gml", _string) == 1)
				return docommand(_string, silentcommand, is_trigger)
		}
		
		if(string_pos(";", _string) != 0) 
		{
			var _commands = string_split(_string + ";", ";");
			for(var i = 0; i < array_length(_commands); i++)
				docommand(_commands[i], silentcommand, is_trigger);
		}
		else 
			docommand(_string, silentcommand, is_trigger);
	}
}

function int64_safe(str)
{
	try return int64(str) catch(e) return 0;
}

function real_safe(str)
{
	try return real(str) catch(e) return 32;
}

function register_vkey_debug_command(func, name, description)
{
	global.vkeyui_debug_table[$ name] = [func, description]
}

function register_vkey_edit_command(func, name, description, key_restriction = VKEYUI_KEY_TYPES.NONE, show = true)
{
	global.vkeyui_edit_table[$ name] = [func, description, key_restriction, show]
}

function docommand(commandstring, silentcommand = false, is_trigger = false) 
{
	if(PRE_2023_GM)
	{
		var _args = _string_split(commandstring, " ");
		var _cmd = _args[0];
		array_delete(_args, 0, 1);
	
		if(global.vkeyui_debug_table[$ _cmd] != undefined)
		{
			// game gets confused if we don't do this
			var _func = asset_get_index(script_get_name(global.vkeyui_debug_table[$ _cmd][0]));
			script_execute_ext(_func, _args);
		}
	
		show_debug_message(_args);
	}
	else
	{
		var _args = string_split(commandstring, " ");
		var _cmd = _args[0];
		array_delete(_args, 0, 1);
	
		if(global.vkeyui_debug_table[$ _cmd] != undefined)
		{
			var _func = global.vkeyui_debug_table[$ _cmd][0];
			script_execute_ext(_func, _args);
		}
		show_debug_message(_args);
	}
}

function asset_get_index_vkey(name)
{
	var _spr = asset_get_index(name)
	return sprite_exists(_spr) ? _spr : spr_button_z_big;
}


function createvbutton(loadedbutton)
{
	var orig_loadedbutton = loadedbutton;
	var _keycodes_compat = [];
	for(var i = 0, _vars = variable_struct_get_names(loadedbutton); i < array_length(_vars); i++)
	{
		var _var = _vars[i];
		if(is_vkey_variable_blacklisted(_var))
		{
			show_debug_message("[VIRTUAL_CONTROLLER] Trimming invalid variable: " + _var);
			variable_struct_remove(loadedbutton, _var);
		}
		
		process_old_vkey_vars(_var, loadedbutton, _keycodes_compat);
	}
	
	if(array_length(_keycodes_compat) > 0)
		loadedbutton[$ "keycodes"] = _keycodes_compat;
	
	
	loadedbutton[$ "sprite"] = loadedbutton[$ "sprite"] == undefined ? spr_button_z_big : asset_get_index_vkey(loadedbutton[$ "sprite"]);
	loadedbutton[$ "sprite_index"] = loadedbutton[$ "sprite_index"] == undefined ? spr_button_z_big : asset_get_index_vkey(loadedbutton[$ "sprite_index"]);
	loadedbutton[$ "spr_pressed"] = loadedbutton[$ "spr_pressed"]  == undefined ? loadedbutton[$ "sprite"] : asset_get_index_vkey(loadedbutton[$ "spr_pressed"]);
	loadedbutton[$ "spr_palette"] = loadedbutton[$ "spr_palette"] == undefined ? noone : asset_get_index_vkey(loadedbutton[$ "spr_palette"]);
	loadedbutton[$ "keycodes"] = !is_array(loadedbutton[$ "keycodes"]) ? [VKEYUI_KEY_TYPES.NONE] : loadedbutton[$ "keycodes"];
	loadedbutton[$ "keycodes"][0] = VKEYUI_KEY_TYPES[$ loadedbutton[$ "keycodes"][0]];
	
	
	var _keycodes = loadedbutton[$ "keycodes"];
	if(is_control_blacklisted(_keycodes[0]))
	{
		if(_keycodes[0] != VKEYUI_KEY_TYPES.EDIT)
			return;
		
		var found_any_edit_button = false;
		with(obj_virtual_controller)
		{
			if(keycodes[0] == VKEYUI_KEY_TYPES.EDIT)
			{
				// this is both easier to read and harder to read at the same time
				found_any_edit_button = true;
				if
				(
					orig_loadedbutton[$ "sprite"] == undefined || 
					(
						orig_loadedbutton[$ "sprite"] != "spr_button_z_big" && 
						asset_get_index_vkey(orig_loadedbutton[$ "sprite"]) == spr_button_z_big
					)
				)
				{
					loadedbutton[$ "sprite"] = spr_button_cog_big;
				}
				
				// just in-case
				loadedbutton[$ "x"] = clamp(loadedbutton[$ "x"], sprite_get_width(loadedbutton[$ "sprite"]) / 2, display_get_gui_width() + sprite_get_width(loadedbutton[$ "sprite"]) / 2);
				loadedbutton[$ "y"] = clamp(loadedbutton[$ "y"], sprite_get_height(loadedbutton[$ "sprite"]) / 2, display_get_gui_height() + sprite_get_height(loadedbutton[$ "sprite"]) / 2);
				
				
				var _vars_to_copy = variable_struct_get_names(loadedbutton);
				for(var i = 0; i < array_length(_vars_to_copy); i++)
				{
					var _var = _vars_to_copy[i];
					variable_instance_set(id, _var, loadedbutton[$ _var]);
					show_debug_message("[VIRTUAL_CONTROLLER] Setting var " + _var + " to " + string(loadedbutton[$ _var]) + " for edit button.");
				}
			}
		}
		
		if(found_any_edit_button)
			return;
	}
	if(_keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
	{
		loadedbutton[$ "spr_joystick"] = loadedbutton[$ "spr_joystick"] == undefined ? spr_button_joystick : asset_get_index_vkey(loadedbutton[$ "spr_joystick"]);
		loadedbutton[$ "stick_xscale"] = loadedbutton[$ "stick_xscale"] == undefined ? 1 : loadedbutton[$ "stick_xscale"];
		loadedbutton[$ "stick_yscale"] = loadedbutton[$ "stick_yscale"] == undefined ? 1 : loadedbutton[$ "stick_yscale"];
		loadedbutton[$ "joy_deadzone_x"] = loadedbutton[$ "joy_deadzone_x"] == undefined ? 1 : loadedbutton[$ "joy_deadzone_x"];
		loadedbutton[$ "joy_deadzone_y"] = loadedbutton[$ "joy_deadzone_y"] == undefined ? 1 : loadedbutton[$ "joy_deadzone_y"];
		loadedbutton[$ "joy_blend"] = loadedbutton[$ "joy_blend"] == undefined ? 1 : loadedbutton[$ "joy_blend"];
	}
	
	
	with(instance_create_depth(0, 0, VKEY_DEPTH, obj_virtual_controller, loadedbutton))
		vkey_init_input();
}

function virtual_key_save(exportdialog = false, save = false) 
{
	var mybuttons = array_create(0);
	with(obj_virtual_controller) 
	{
		if(is_control_blacklisted(keycodes[0]) && keycodes[0] != VKEYUI_KEY_TYPES.EDIT) 
			continue;
		
		var _vars = variable_instance_get_names(id);
		array_push(_vars,
			"x", 
			"y", 
			"depth", 
			"image_angle",
			"image_speed", 
			"image_index",
			"image_xscale",
			"image_yscale",
		);
		
		var buttonproperties = {};
		for(var i = 0; i < array_length(_vars); i++)
		{
			if(!is_vkey_variable_blacklisted(_vars[i]) && !is_vkey_variable_special(_vars[i]))
			{
				var _val = variable_instance_get(id, _vars[i]);
				switch(typeof(_val))
				{
					case "array":
						buttonproperties[$ _vars[i]] = [];
						 array_copy(buttonproperties[$ _vars[i]], 0, _val, 0, array_length(_val));
					break;
					
					default:
						variable_struct_set(buttonproperties, _vars[i], _val);
					break;
				}
				
			}
		}
		
		buttonproperties.sprite = sprite_get_name(sprite);
		buttonproperties.sprite_index = sprite_get_name(sprite_index);
		buttonproperties.spr_pressed = sprite_get_name(spr_pressed);
		buttonproperties.spr_palette = sprite_get_name(spr_palette);
		
		if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
		{
			buttonproperties.spr_joystick = sprite_get_name(spr_joystick);
			buttonproperties.stick_xscale = stick_xscale;
			buttonproperties.stick_yscale = stick_yscale;
			buttonproperties.joy_deadzone_x = joy_deadzone_x;
			buttonproperties.joy_deadzone_y = joy_deadzone_y;
			buttonproperties.joy_blend = joy_blend;
		}
		
		var _key_type_string = "";
		for(var i = 0, _types = variable_struct_get_names(VKEYUI_KEY_TYPES); i < array_length(_types); i++)
		{
			_key_type_string = _types[i];
			if(VKEYUI_KEY_TYPES[$ _key_type_string] == keycodes[0])
				break;
		}
		
		buttonproperties[$ "keycodes"][0] = _key_type_string;
		
		//show_message("before:" + string(oldkeytype) + "\nafter:" + string(keycodes[0]) + "\nbuttonproperty:" + string(buttonproperties.keycodes[0]));
			
		array_push(mybuttons, buttonproperties);
	}
	
	if(exportdialog)
	{
		show_message_async("Copied to clipboard");
		clipboard_set_text(json_stringify(mybuttons));
	}
	
	if(save)
	{
		var buff = buffer_create(0, buffer_grow, 1);
		buffer_write(buff, buffer_string, json_stringify(mybuttons));
		buffer_save(buff, BUTTON_SAVE_LOCATION);
		buffer_delete(buff);
	}
	else
		return json_stringify(mybuttons);
}

function get_virtual_key_save()
{
	if(file_exists(BUTTON_SAVE_LOCATION)) 
	{
		var buttonbuffer = buffer_load(BUTTON_SAVE_LOCATION);
		var buttonstring = buffer_read(buttonbuffer, buffer_string);
		buffer_delete(buttonbuffer);
		return buttonstring;
	}
	else
	{
		return USE_ASSETS_FOR_DEFAULT_LAYOUT ? global.vkeyui_cachedlayout : json_stringify(DEFAULT_VKEY_CONTROLS_LAYOUT);
	}
}

function virtual_key_load(json = "") 
{
	with(obj_virtual_controller_manager)
		event_user(1);
		
	with(obj_virtual_controller) 
	{
		if(!is_control_blacklisted(keycodes[0]))
			instance_destroy();
	}
	
	if(json == "default")
		json = USE_ASSETS_FOR_DEFAULT_LAYOUT ? global.vkeyui_cachedlayout : json_stringify(DEFAULT_VKEY_CONTROLS_LAYOUT);
	
	try
	{
		var buttonload = json_parse(json);
		
		while(array_length(buttonload) > 0) 
		{
			var loadedbutton = array_pop(buttonload);
			createvbutton(loadedbutton);
		}
		with(obj_virtual_controller_manager)
			event_user(0);
	}
	catch(e)
	{
		get_string_async("JSON Parse Error.", e);
	}
}

function processedit(commandstring) 
{
	if(PRE_2023_GM)
	{
		var _string = _string_trim(commandstring);
		if(string_pos(";", _string) != 0) 
		{
			var _commands = _string_split(_string + ";", ";");
			for(var i = 0; i < array_length(_commands); i++)
				doedit(_commands[i]);
		} 
		else
		{
			doedit(_string);
		}
	}
	else
	{
		var _string = string_trim(commandstring);
		if(string_pos(";", _string) != 0) 
		{
			var _commands = string_split(_string + ";", ";");
			for(var i = 0; i < array_length(_commands); i++)
				doedit(_commands[i]);
		} 
		else
		{
			doedit(_string);
		}
	}
}

function doedit(commandstring)
{
	if(PRE_2023_GM)
	{
		var _args = _string_split(commandstring, " ");
		var _cmd = _args[0];
		array_delete(_args, 0, 1);
		
		if(global.vkeyui_edit_table[$ _cmd] != undefined)
		{
			// TODO: Merge with upstream mobile controls repo
			// game gets confused if we don't do this
			var _func = asset_get_index(script_get_name(global.vkeyui_edit_table[$ _cmd][0]));
			script_execute_ext(_func, _args);
		}
	}
	else
	{
		var _args = string_split(commandstring, " ");
		var _cmd = _args[0];
		array_delete(_args, 0, 1);
	
	
		if(global.vkeyui_edit_table[$ _cmd] != undefined)
			script_execute_ext(global.vkeyui_edit_table[$ _cmd][0], _args);
	}
}

// Doing this to avoid unnessary pointer allocations to methods as they seem to not be destroyed.

function joystick_vkey_func(_touch_id, _touch_x, _touch_y, _click)
{
	if(!_click)
		return;
			
	if(!global.vkeyui_forceshowcontrols && global.vkeyui_forcehidecontrols)
		return;
				
	if (global.vkeyui_movingvkeys) 
		return;
				
	touch_id = _touch_id
}

function bind_vkey_func(_touch_id, _touch_x, _touch_y, _click)
{
	if(!_click)
		return;
				
	if(!global.vkeyui_forceshowcontrols && global.vkeyui_forcehidecontrols)
		return;
				
	if (global.vkeyui_movingvkeys) 
		return;
				
	if(global.vkeyui_showbinds || forceshowbind)
		processcommand(keycodes[1], true)
}

function __press_key_safe(keycode)
{
	if(is_string(keycode))
		return;
	var _func = pressed ? keyboard_key_release : keyboard_key_press;
	_func(keycode)
}

function lockablebutton_vkey_func(_touch_id, _touch_x, _touch_y, _click)
{
	if(!_click)
		return;
				
	if(!global.vkeyui_forceshowcontrols && global.vkeyui_forcehidecontrols)
		return;
				
	if (global.vkeyui_movingvkeys) 
		return;
	
	for(var i = 1; i < array_length(keycodes); i++)
		__press_key_safe(keycodes[i]);
		
	pressed = !pressed
}

function vkey_init_input()
{	
	if(buttonlockable) 
	{
		input = lockablebutton_vkey_func;
		return; // we are not doing special locakable buttons, that's just crazy
	}
	
	if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
		input = joystick_vkey_func;
	
	if(keycodes[0] == VKEYUI_KEY_TYPES.BIND)
		input = bind_vkey_func;
}

function is_control_blacklisted(control)
{
	return ds_list_find_index(global.vkeyui__blacklisted_controls, control) != -1;
}

function is_vkey_variable_blacklisted(_var)
{
	return ds_list_find_index(global.vkeyui__blacklisted_variables, _var) != -1;
}

function is_vkey_variable_special(_var)
{
	return ds_list_find_index(global.vkeyui__special_variables, _var) != -1;
}

function vkey_from_input(input)
{
	var instance = undefined
	if(string_pos("bind", string_lower(input)) == 1) 
	{
		var commands = string_delete(input, 1, 5)
		var data = 
		{
			keycodes : [VKEYUI_KEY_TYPES.BIND, commands],
			sprite : spr_button_debug,
			forceshowbind : (string_pos("togglebinds", commands) == 1)
		}
		
		instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, data);
		with(instance)
			event_perform(ev_mouse, ev_global_left_button);
		
		return;
	}
		
	var _choices = 
	{
		"up" : 
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_up],
			sprite : spr_virtual_controller
		},
			
		"down" : 
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_down],
			sprite : spr_virtual_controller,
			image_angle : 180
		},
			
		"left" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_left],
			sprite : spr_virtual_controller,
			image_angle : 90
		},
			
		"right" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_right],
			sprite : spr_virtual_controller,
			image_angle : -90
		},
			
		"up left" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_up, vk_left],
			sprite : spr_virtual_controller,
			image_angle : 45
		},
			
		"up right" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_up, vk_right],
			sprite : spr_virtual_controller,
			image_angle : -45
		},
			
		"down left" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_down, vk_left],
			sprite : spr_virtual_controller,
			image_angle : 135
		},
			
		"down right" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_down, vk_right],
			sprite : spr_virtual_controller,
			image_angle : -135
		},
			
		"z" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, ord("Z")],
			sprite : spr_button_z_big,
		},
			
		"x" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, ord("X")],
			sprite : spr_button_x_big,
		},
			
		"c" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, ord("C")],
			sprite : spr_button_c_big,
		},
			
		"shift" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_shift],
			sprite : spr_button_shift_big,
		},
			
		"shift_dash_lock" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_shift],
			sprite : spr_button_shift_big,
			spr_pressed : spr_button_shift_big,
			pressed_color : make_color_rgb(255, 0, 0),
			buttonlockable : true,
		},
			
		"escape" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, vk_escape],
			sprite : spr_button_escape_big
		},
			
		"shoot" :
		{
			keycodes : [VKEYUI_KEY_TYPES.NONE, ord("A")],
			sprite : spr_button_shoot_big
		},
			
		"debug" :
		{
			keycodes : [VKEYUI_KEY_TYPES.DEBUG],
			sprite : spr_button_debug_big
		},
			
		"joystick" :
		{
			keycodes : [VKEYUI_KEY_TYPES.JOYSTICK, vk_up, vk_down, vk_left, vk_right],
			sprite : spr_button_joystick_base,
			spr_joystick : spr_button_joystick,
			radius : sprite_get_width(spr_button_joystick_base) / 2
		}
	}
		
	// compatibility with the old system
	var _choice = string_lower(input);
	switch(_choice)
	{
		case "upleft":
		case "up+left":
			_choice = "up left";
				
		case "upright":
		case "up+right":
			_choice = "up right";
				
		case "downleft":
		case "down+left":
			_choice = "down left";
				
		case "downright":
		case "down+right":
			_choice = "down right";
	}
	
	_choices[$ _choice] = _choices[$ _choice] == undefined ? {} : _choices[$ _choice];
	
	instance = instance_create_depth(display_get_gui_width() / 2, display_get_gui_height() / 2, -9999, obj_virtual_controller, _choices[$ _choice]);
				
	with(instance)
		event_perform(ev_mouse, ev_global_left_button);
}

function vkey_controls_edit_mode()
{
	if(global.vkeyui_movingvkeys)
	{
		if(/*is_control_blacklisted(keycodes[0]) ||*/ global.vkeyui_hoveringbutton) 
			return;
		
		if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self) && !position_meeting(mouse_x, mouse_y, obj_virtual_controller_scale))
		{
			with(obj_virtual_controller_scale) instance_destroy();
			
			old_button_x = (x - device_mouse_x_to_gui(0));
			old_button_y = (y - device_mouse_y_to_gui(0));
			mouseon = true;
			global.vkeyui_selectedvbutton = self;
			global.vkeyui_hoveringbutton = true;
			with(instance_create_depth(x + sprite_width - sprite_xoffset, y + sprite_height - sprite_yoffset, VKEY_DEPTH - 1, obj_virtual_controller_scale))
			{
				object_id = other.id;
				object_xscale = other.image_xscale;
				object_yscale = other.image_yscale;
			}
		}
	}
}

function vkey_prompt_color()
{
	var _cmds = variable_struct_get_names(global.vkeyui_edit_table);
	var _helptext = "Edit button: \n";
	if(instance_exists(global.vkeyui_selectedvbutton))
	{
		for(var i = 0; i < array_length(_cmds); i++)
		{
			var _cmdarr = global.vkeyui_edit_table[$ _cmds[i]];
			if(instance_exists(global.vkeyui_selectedvbutton) && (global.vkeyui_selectedvbutton.keycodes[0] == _cmdarr[2] || _cmdarr[2] == VKEYUI_KEY_TYPES.NONE) && _cmdarr[3])
				_helptext += _cmdarr[1] + "\n"; // append description
		}
	}
	else
	{
		show_message_async("Select a button first before trying to edit.");
		return;
	}
	
	
					
	prompt = get_string_async(_helptext, last_input);
}

function vkey_handle_special_buttons()
{
	if(!global.vkeyui_forceshowcontrols && global.vkeyui_forcehidecontrols)
		return;
	
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self))
	{	
		if(global.vkeyui_movingvkeys)
		{
			switch(keycodes[0])
			{
				case VKEYUI_KEY_TYPES.ADD:
					prompt = get_string_async("Choose button ( up, down, left, right, up+left, up+right, down+left, down+right, shift, z, x, c, shift_dash_lock, escape, shoot, debug, bind <value>, joystick)", last_input);
				break
				case VKEYUI_KEY_TYPES.REMOVE:
					if(instance_exists(global.vkeyui_selectedvbutton))
						instance_destroy(global.vkeyui_selectedvbutton);
				break
				case VKEYUI_KEY_TYPES.LOAD:
					var _temp_text = clipboard_get_text()
					prompt = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]", ((clipboard_has_text() && (string_pos("[", _temp_text) == 1)) ? _temp_text : ""));
				break
				case VKEYUI_KEY_TYPES.SAVE:
					virtual_key_save(true, true);
				break
				case VKEYUI_KEY_TYPES.COLOR:
					vkey_prompt_color();
				break
				case VKEYUI_KEY_TYPES.GRID:
					global.vkeyui_gridmode = !global.vkeyui_gridmode
				break
			}
			
		}
		else if(keycodes[0] == VKEYUI_KEY_TYPES.DEBUG)
			prompt = get_string_async("Debug ( help )", last_input);
		else if(keycodes[0] == VKEYUI_KEY_TYPES.EDIT)
		{
			global.vkeyui_movingvkeys = true;
			
			if(global.vkeyui_movingvkeys)
			{
				with(obj_virtual_controller_manager)
					event_user(1);
				
				instance_create_depth(display_get_gui_width() / 2 - VKEY_EDIT_UI_WIDTH / 2, 128, VKEY_DEPTH - 1, obj_virtual_controller_edit_ui);
					
			}
		}
	}
}
