#macro LEVELS_FILE_PATH "/storage/emulated/0/Documents/pizza tower android/levels/"
function fakeeditor_play_level(){
	if(!obj_fakeeditor.in_play_mode) {
		global.forcehidecontrols = 0
		scr_resize_room(0,room_height,room_width,room_height)
		with(obj_fakeeditor_object) {
			visible = false
			if(object_exists(asset_get_index(fake_ed_content))) {
				var _myvars = variable_instance_get_names(id)
				array_push(_myvars,"image_xscale")
				array_push(_myvars,"image_yscale")
				var return_array = []
				var clean_index = 0
				for (var i = 0; i < array_length(_myvars); i++) {
					var item = _myvars[i]
					var found = false
					for (var j = 0; j < array_length(global.fake_ed_remove_vars); j++) {
					    if (item == global.fake_ed_remove_vars[j]) {
					        found = true
					        break
					    }
					}
					if (!found) {
					    return_array[clean_index] = item
					    clean_index++
					}
				}
				_myvars = return_array;
				with(instance_create_depth(x, y, depth, asset_get_index(fake_ed_content))){
					for (i = 0; i < array_length(_myvars); i++) {
						variable_instance_set(id, _myvars[i], variable_instance_get(other.id,_myvars[i]))
					}
					other.fake_ed_instance = id
				}
			}
		}
		
		with(obj_player1){
			state = states.comingoutdoor
			visible = false
			sprite_index = spr_walkfront
			image_index = 0
			if(instance_exists(obj_exitgate)){
				x = obj_exitgate.x
				y = obj_exitgate.y + 82
			} else {
				x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)
				y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)
			}
			roomstartx = x
			roomstarty = y
		}
	} else {
		global.forcehidecontrols = 1
		with(obj_fakeeditor_object){
			visible = true
			if(fake_ed_instance != undefined){
				instance_destroy(fake_ed_instance, false)
			}
		}
		scr_playerreset()
		obj_camera.ignorebounds = true
		with(obj_player1){
			state = states.titlescreen
			visible = false
		}
		with(obj_music){
			audio_stop_sound(musicID)
			music = mu_editor
			musicID = scr_music(music)
		}
	}
	with(obj_fakeeditor){
		in_play_mode = !in_play_mode
	}
}
function fakeeditor_ask_object(){
	fakeeditor_obj = get_string_async("Object Name", nejdmssx)
}
function fakeeditor_ask_edit(){
	var commonoptions = "save, load, help, delete level"
	if(global.option_editor_oldedit){
		if(instance_exists(obj_fakeeditor.oldselectedent)){
			if(obj_fakeeditor.oldselectedent.fake_ed_content == "obj_solid_tiled" || obj_fakeeditor.oldselectedent.fake_ed_content == "obj_tiled"){
				fakeed_istilemenu = true
				fakeeditor_edit = get_string_async("Set object variable (<type> <variablename> <new value>), " + commonoptions + ", tilemenu.", nejdmssx)
				return;
			}
		}
		fakeeditor_edit = get_string_async("Set object variable (<type> <variablename> <new value>), " + commonoptions + ".", nejdmssx)
	} else {
		fakeeditor_edit = get_string_async(commonoptions + ".", nejdmssx)
	}
}
function fakeeditor_toggle_swipe(){
	with(obj_fakeeditor){
		swipemode = !swipemode
	}
}
function fakeeditor_delete_object(){
	with(obj_fakeeditor){
		if(instance_exists(transfotip)){
			instance_destroy(transfotip)
		}
		transfotip = instance_create(0,0,obj_transfotip)
		with(transfotip)
		{
			if instance_exists(other.oldselectedent)
			{
				text = ("{u}DELETED " + string_upper(other.oldselectedent.fake_ed_content) + "/")
				instance_destroy(other.oldselectedent)
			}
		}
		with(oldselectedent){
			instance_destroy()
		}
	}
}

function fakeeditor_copy_object(){
	with(obj_fakeeditor) {
		with(oldselectedent){
			instance_copy(false)
		}
	}
}

function fakeeditor_create_object(ob){
	if(object_exists(asset_get_index(ob))){
		with(instance_create_depth(camera_get_view_x(view_camera[0])  + view_get_wport(view_camera[0]) / 4, camera_get_view_y(view_camera[0]) + view_get_hport(view_camera[0]) / 4, depth, obj_fakeeditor_object)){
			var _varnames = []
			var _varvalues = []
			fake_ed_content = ob
			with(instance_create_depth(x, y, depth, asset_get_index(ob))){
				_varnames = variable_instance_get_names(id)
				for(var i = 0; i < array_length(_varnames); i++){
					_varvalues[i] = variable_instance_get(id, _varnames[i])
				}
				instance_destroy(id,false)
			}
			for(var i = 0; i < array_length(_varnames); i++){
				variable_instance_set(id, _varnames[i], _varvalues[i])
			}
		}
		with(obj_fakeeditor){	
			if(instance_exists(transfotip)){
				instance_destroy(transfotip)
			}
			transfotip = instance_create(0,0,obj_transfotip)
			with(transfotip)
			{
				text = ("{u}ADDED " + string_upper(ob) + "/")
			}
		}
	}
}
function fakeeditor_toggle_grid(){
	obj_fakeeditor.grid_mode = !obj_fakeeditor.grid_mode
}
function fakeeditor_edit_object_var(argument0) //gml_Script_edit_object_var
{
	var commandstring = argument0
	try{
		string_split(commandstring, " ");
	} catch(err){
		return get_string_async("string splitting failed, aborting...", err);
	}
    var commands = string_split(commandstring, " ")
    var i = 1
    while (i < array_length(commands))
    {
        if (i == 1)
        {
            tempvartype = string(commands[i])
            if (tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset")
            {
                show_message_async((("invalid type \"" + commands[i]) + "\" Available types: bool, string, int, float, real, asset"))
                break
            }
            else
            {
                if (i == 2)
                {
                    oldvariable = variabletochange
                    variabletochange = commands[i]
                    if (!(variable_instance_exists(selectedent, variabletochange)))
                    {
                        variabletochange = oldvariable
                        show_message_async("variable does not exist, defaulting to previous variable.")
                    }
                }
                if (i == 3)
                {
                    switch tempvartype
                    {
                        case "bool":
                            if is_bool(bool(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                                show_message_async("successfully set bool")
                            }
                            break
                        case "int":
                            if is_int64(int64(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                                show_message_async("successfully set int")
                            }
                            break
                        case "float":
                        case "real":
                            if is_real(real(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, real(commands[i]))
                                show_message_async("successfully set real")
                            }
                            break
                        case "string":
                            if is_string(commands[i])
                            {
                                variable_instance_set(selectedent, variabletochange, string_replace(commandstring, "string " + variabletochange + " ", ""))
                                show_message_async("successfully set string")
                            }
                            break
                        case "asset":
                            if (asset_get_index(commands[i]) > -1)
                            {
                                variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                                show_message_async("successfully set asset")
                            }
                            break
                    }

                }
                if (i >= 3)
                    break
                else
                {
                    i++
                    continue
                }
            }
        }
        else if (i == 2)
        {
            oldvariable = variabletochange
            variabletochange = commands[i]
            if (!instance_exists(selectedent))
            {
                show_message_async("instance does not exist.")
                break
            }
            else if (!(variable_instance_exists(selectedent, variabletochange)))
            {
                variabletochange = oldvariable
                show_message_async("variable does not exist.")
                break
            }
            else
            {
                if (i == 3)
                {
                    switch tempvartype
                    {
                        case "bool":
                            if is_bool(bool(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                                show_message_async("successfully set bool")
                            }
                            break
                        case "int":
                            if is_int64(int64(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                                show_message_async("successfully set int")
                            }
                            break
                        case "float":
                        case "real":
                            if is_real(real(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, real(commands[i]))
                                show_message_async("successfully set real")
                            }
                            break
                        case "string":
                            if is_string(commands[i])
                            {
                                variable_instance_set(selectedent, variabletochange, string_replace(commandstring, "string " + variabletochange + " ", ""))
                                show_message_async("successfully set string")
                            }
                            break
                        case "asset":
                            if (asset_get_index(commands[i]) > -1)
                            {
                                variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                                show_message_async("successfully set asset")
                            }
                            break
                    }

                }
                if (i >= 3)
                    break
                else
                {
                    i++
                    continue
                }
            }
        }
        else
        {
            if (i == 3)
            {
                switch tempvartype
                {
                    case "bool":
                        if is_bool(bool(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                            show_message_async("successfully set bool")
                        }
                        break
                    case "int":
                        if is_int64(int64(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                            show_message_async("successfully set int")
                        }
                        break
                    case "float":
                    case "real":
                        if is_real(real(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, real(commands[i]))
                            show_message_async("successfully set real")
                        }
                        break
                        case "string":
                            if is_string(commands[i])
                            {
                                variable_instance_set(selectedent, variabletochange, string_replace(commandstring, "string " + variabletochange + " ", ""))
                                show_message_async("successfully set string")
                            }
                            break
                    case "asset":
                        if (asset_get_index(commands[i]) > -1)
                        {
                            variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                            show_message_async("successfully set asset")
                        }
                        break
                }

            }
            if (i >= 3)
                break
            else
            {
                i++
                continue
            }
        }
    }
}
function fakeeditor_initcamera(){
	global.forcehidecontrols = 1
	view_w = 960
	view_h = 540
	cx = mouse_x
	cy = mouse_y
	camera_speed = 10
	drag_speed = 0.6
	zoom = 1
	obj_camera.ignorebounds = true
	scr_resize_room(0,room_height,room_width,room_height) // dont ask
	with(obj_music){
		audio_stop_sound(musicID)
		music = mu_editor
		musicID = scr_music(music)
	}
}
function fakeeditor_camera_update()
{
	if(mouse_check_button_pressed(mb_left)) {
		cx = mouse_x;
		cy = mouse_y; 
	}
	if(mouse_check_button(mb_left)) { 
		camera_set_view_pos(view_camera[0], cx - (mouse_x - camera_get_view_x(view_camera[0])), cy - (mouse_y - camera_get_view_y(view_camera[0])))
	} 
}

function fakeeditor_draw_grid() {
	startX = max(0, floor(camera_get_view_x(view_camera[0]) / grid_size) * grid_size);
	startY = max(0, floor(camera_get_view_y(view_camera[0]) / grid_size) * grid_size);
	endX = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
	endY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
    for (var _x = startX; _x <= endX; _x += grid_size) {
		draw_line(_x, startY, _x, endY);
	}
	for (var _y = startY; _x <= endY; _y += grid_size) {
	    draw_line(startX, _y, endX, _y);
	}
}
function fakeeditor_save_editor_objects()
{
	var myobjects = array_create(0)
    with(obj_fakeeditor_object)
    {
        var objectproperties = {
			x: x,
			y: y,
			image_angle: image_angle,
			image_xscale: image_xscale,
			image_yscale: image_yscale,
			image_speed: image_speed,
			image_blend: image_blend,
			persistent: persistent,
			depth: depth,
			fake_ed_content: fake_ed_content,
		}
        var var_array = variable_instance_get_names(id)
		var return_array = [];
		var clean_index = 0; // Iterate through array1
		for (var i = 0; i < array_length(var_array); i++) {
			var item = var_array[i];
			var found = false;
			if(array_get_index(item,global.fake_ed_remove_vars) != -1){
				found = true	
			}
			if (!found) {
				return_array[clean_index] = item;
				clean_index++;
			}
		}
		var_array = return_array;
		array_push(var_array,"fake_ed_content")
        var i = 0
		while (i < array_length(var_array)){
			if(var_array[i] == "content"){
				variable_struct_set(objectproperties,var_array[i],"asset|" + object_get_name(variable_instance_get(id,var_array[i])))
				i++
				continue;
			}
			if(var_array[i] == "targetRoom"){
				variable_struct_set(objectproperties,var_array[i],"asset|" + room_get_name(variable_instance_get(id,var_array[i])))
				i++
				continue;
			}
			if(var_array[i] == "sprite"){
				if(is_string(variable_instance_get(id,var_array[i])))
				{
					variable_struct_set(objectproperties,var_array[i],variable_instance_get(id,var_array[i]))
				} else 
				{
					variable_struct_set(objectproperties,var_array[i],"asset|" + sprite_get_name(variable_instance_get(id,var_array[i])))
				}
				i++
				continue;
			}
			if(var_array[i] == "tileset"){
				variable_struct_set(objectproperties,var_array[i],"asset|" + sprite_get_name(variable_instance_get(id,var_array[i])))
				i++
				continue;
			}
			variable_struct_set(objectproperties,var_array[i],variable_instance_get(id,var_array[i]))
			i++
		}
		array_push(myobjects, objectproperties)
    }
    var liststring = json_stringify(myobjects)
	var levelbuffer = buffer_create(string_byte_length(liststring) + 1, buffer_fixed, 1)
	buffer_write(levelbuffer, buffer_string, liststring)
	buffer_save(levelbuffer, "levels/level.txt")
	if(os_type == os_android){
		var i = 0;
		var baseFilename = LEVELS_FILE_PATH + "level";
		var filename = baseFilename + string(i) + ".png";
		while(file_exists(filename)) {
			filename = baseFilename + string(i) + ".png";
			i++;
		}
		buffer_save(levelbuffer, filename)
		show_message_async("Level data saved to: " + filename)
	}
	buffer_delete(levelbuffer)
	if(os_type == os_windows){
		get_string_async("copy into browser","file:///" + game_save_id + "levels/level.txt")
	}
}
function fakeeditor_load_editor_objects(argument0)
{
    if ((!is_string(argument0)) || argument0 == "")
        show_message_async("No input provided")
    else
    {
		if(os_type == os_android){
			// use png cause of android 14 being too stingy regarding apps to read files.
			// TODO: Tell the player the existence of this feature.
			if(string_pos_ext(".png",argument0,string_length(argument0)-4) != 0){
				var filepath = LEVELS_FILE_PATH + argument0
				if(file_exists(filepath)){
					var objbuffer = buffer_load(LEVELS_FILE_PATH + argument0)
					var objstring = buffer_read(objbuffer, buffer_string)
					buffer_delete(objbuffer)
					
					var objload = json_parse(objstring)
			        while(array_length(objload) > 0) {
						var loadedobject = array_pop(objload)
						with(instance_create(0, 0, obj_fakeeditor_object)) {
							var var_array = variable_struct_get_names(loadedobject)
							var i = 0
							while (i < array_length(var_array))
				            {
								var tempvar = variable_struct_get(loadedobject, var_array[i])
								if(is_string(tempvar)){
									if(string_pos("asset|",tempvar) == 1){
										tempvar = asset_get_index(string_replace(tempvar,"asset|",""))
									}
								}
								if(tempvar == pointer_null || tempvar == pointer_invalid){
									tempvar = undefined
								}
								variable_instance_set(id, var_array[i], tempvar)
				                i++
				            }
						}
					}
				} else {
					show_message_async("No file exists at: " + LEVELS_FILE_PATH + argument0)
				}
				return;
			}
		}
		try {
			json_parse(argument0)
		} catch(err){
			get_string_async("JSON ERROR",string(err))
			return;
		}
        var objload = json_parse(argument0)
        while(array_length(objload) > 0) {
			var loadedobject = array_pop(objload)
			with(instance_create(0, 0, obj_fakeeditor_object)) {
				var var_array = variable_struct_get_names(loadedobject)
				var i = 0
				while (i < array_length(var_array))
	            {
					var tempvar = variable_struct_get(loadedobject, var_array[i])
					if(is_string(tempvar)){
						if(string_pos("asset|",tempvar) == 1){
							tempvar = asset_get_index(string_replace(tempvar,"asset|",""))
						}
					}
					if(tempvar == pointer_null || tempvar == pointer_invalid){
						tempvar = undefined
					}
					variable_instance_set(id, var_array[i], tempvar)
	                i++
	            }
			}
		}
	}    
}
function scr_resize_room(_x,_y,_width,_height){
	with(obj_camera){
		fakex = _x
		fakey = _y
		fakewidth = _width
		fakeheight = _height
	}
	/*
	with(instance_create(_x,_y,obj_1x1)){
		image_xscale = _width
		image_yscale = _height
	}
	*/
}
function draw_tileset_picker(_tilespr){
	draw_set_alpha(0.5) 
	draw_set_color(c_black)
	draw_rectangle(0, 0, sprite_get_width(_tilespr), sprite_get_height(_tilespr), false)
	draw_set_alpha(1) 
	draw_set_color(c_white)
	draw_sprite(_tilespr, 0, sprite_get_xoffset(_tilespr), sprite_get_yoffset(_tilespr))
	var cursorposx = round(clamp(device_mouse_x_to_gui(0), 0, sprite_get_width(_tilespr)) / (tile_width + tile_xborder)) * (tile_width + tile_xborder) + tile_xoffset
	var cursorposy = round(clamp(device_mouse_y_to_gui(0), 0, sprite_get_height(_tilespr)) / (tile_height + tile_yborder)) * (tile_height + tile_yborder)  + tile_yoffset
	draw_set_color(c_green)
	draw_rectangle(topleft_x, topleft_y, topleft_x + tile_width, topleft_y + tile_height, true)
	draw_rectangle(bottomleft_x, bottomleft_y, bottomleft_x + tile_width, bottomleft_y + tile_height, true)
	draw_rectangle(topright_x, topright_y, topright_x + tile_width, topright_y + tile_height, true)
	draw_rectangle(bottomright_x, bottomright_y, bottomright_x + tile_width, bottomright_y + tile_height, true)
	draw_rectangle(left_x, left_y, left_x + tile_width, left_y + tile_height, true)
	draw_rectangle(right_x, right_y, right_x + tile_width, right_y + tile_height, true)
	draw_rectangle(bottom_x, bottom_y, bottom_x + tile_width, bottom_y + tile_height, true)
	draw_rectangle(top_x, top_y, top_x + tile_width, top_y + tile_height, true)
	draw_rectangle(middle_x, middle_y, middle_x + tile_width, middle_y + tile_height, true)
	draw_rectangle(single_x, single_y, single_x + tile_width, single_y + tile_height, true)
	draw_set_color(c_white)
	draw_rectangle(cursorposx, cursorposy, cursorposx + tile_width, cursorposy + tile_height, true)
	holdclick += mouse_check_button(mb_left)
	if(mouse_check_button_released(mb_left)){
		holdclick = 0
	}
	if(holdclick > 30){
		holdclick = 0
		if(os_type == os_windows){
			mouse_clear(mb_left)
		}
		fake_ed_cursor_pos_x = cursorposx
		fake_ed_cursor_pos_y = cursorposy
		fake_ed_tile_string = get_string_async("top, bottom, left, right, topleft, topright, bottomleft, bottomright, middle, single, close menu","")
		
	}
}
function fakeeditor_perfom_edit(){
	if(nejdmssx == "save"){
		fakeeditor_save_editor_objects()
	}
	if(nejdmssx == "load"){
					
		if(clipboard_has_text()){
			amogustextlol = get_string_async("load code / filename: ", clipboard_get_text())
		} else{
				amogustextlol = get_string_async("load code / filename: ","")
		}
	}
	/*if(nejdmssx == "setrank"){
		fakeeditor_ask_rank()
	}*/
	if(nejdmssx == "help"){
		get_string_async("",@"
TILES:
obj_solid_tiled -- use the tilemenu command when it is selected to pick tiles (tap and hold to select them).
obj_tiled -- same as above.
		
WARPS:
obj_door_editor -- requires the index variable of both doors to be the same
obj_hallway_editor -- same as obj_door_editor
obj_lapportal_editor -- same as obj_door_editor AND entrance needs start set to 1 and exit needs start set to 0
obj_boxofpizza_editor -- same as obj_door_editor
obj_secretportal_editor -- same as obj_door_editor AND the start variable is 1 for the portal that leads to the secret, start variable is 0 for the portal in the start of the secret, start variable is 2 for the exit of the secret.
		
TRIGGERS:
obj_background_trigger -- sets the background to what the bgname variable contains on player collide. (asset bgname bg_entrance)
obj_camera_bounds_trigger -- sets the camera bounds when touched. 
obj_command_trigger -- runs any command that the debug menu can run via the command variable. (string command spawn obj_timesupwar)
obj_music_trigger -- swaps the music to what the musicname variable contains on player collide. (asset musicname mu_chase)
obj_outofbounds_trigger -- shows technical difficulty screen and respawns player.
obj_tvtrigger_editor -- displays the hud bubble message.
obj_variable_trigger -- used to set a variable of an object (obsolete).
obj_enemyspawn -- used to create an enemy (obsolete).
obj_..._trigger_door -- when targetkey is pressed in its bounds, the function of the trigger is activated. (string targetkey down)
		
OTHER:
obj_rank_set -- just spawn it in the level to automatically set the rank requirements via the maxscore variable contained in it.
obj_solid -- generic ground that player can stand on.
obj_slope -- generic sloped ground that the player can stand on.
obj_platform -- generic platform that the player can stand on.
obj_donkey -- cow.
		")
	}
	if(nejdmssx == "delete level"){
		with(obj_fakeeditor_object){
			instance_destroy()
		}
	}
	if(nejdmssx == "tilemenu"){
		if(fakeed_istilemenu){
			with(obj_fakeeditor.oldselectedent){
				obj_fakeeditor.selectedent = id
				fake_ed_hold_menu = 1
				global.fake_ed_tilemenu = 1
			}
		}
	}
	fakeed_istilemenu = false
}
