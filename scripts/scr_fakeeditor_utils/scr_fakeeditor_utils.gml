#macro LEVELS_FILE_PATH "/storage/emulated/0/Documents/pizza tower android/levels/"
function fakeeditor_play_level(){
	if(!obj_fakeeditor.in_play_mode) {
		global.forcehidecontrols = false
		with(obj_virtual_controller)
			event_perform(ev_mouse, ev_global_left_button)
		scr_resize_room(0,room_height,room_width,room_height)
		with(obj_fakeeditor_object) {
			visible = false
			if(object_exists(asset_get_index(fake_ed_content))) {
				var _myvars = variable_instance_get_names(id)
				array_push(_myvars,"sprite_index")
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
		with(all)
		{
			if(object_index != obj_fakeeditor || object_index != obj_virtual_controller)
			{
				event_perform(ev_other,ev_room_start)
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
		global.forcehidecontrols = true
		with(obj_virtual_controller) event_perform(ev_mouse, ev_global_left_button)
		with(obj_fakeeditor)
		{
			for(var i = 0;i < instances_len;i++)
			{
				instance_destroy(instances[i], false)
			}
			instances_len = 0
			instances = []
		}
		with(obj_fakeeditor_object)
		{
			visible = true
			if(fake_ed_instance != undefined)
				instance_destroy(fake_ed_instance, false)
		}
		scr_playerreset()
		obj_camera.ignorebounds = true
		with(obj_player1)
		{
			state = states.titlescreen
			visible = false
		}
		with(obj_music)
		{
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
		if(instance_exists(obj_fakeeditor.selectedent)){
			if(obj_fakeeditor.selectedent.fake_ed_content == "obj_solid_tiled" || obj_fakeeditor.selectedent.fake_ed_content == "obj_tiled"){
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
		if(global.fake_ed_tilemenu)
		{
			swipemode = false
			tile_swipemode = !tile_swipemode
			exit;
		}
		cx = mouse_x;
		cy = mouse_y; 
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
			if instance_exists(other.selectedent)
			{
				text = ("{u}DELETED " + string_upper(other.selectedent.fake_ed_content) + "/")
				instance_destroy(other.selectedent)
			}
		}
	}
}

function fakeeditor_copy_object(){
	with(obj_fakeeditor) {
		with(selectedent){
			instance_copy(false)
		}
	}
}

function fakeeditor_create_object(ob){
	var _object = asset_get_index(ob)
	if(object_exists(_object)){
		with(instance_create_depth(camera_get_view_x(view_camera[0])  + view_get_wport(view_camera[0]) / 4, camera_get_view_y(view_camera[0]) + view_get_hport(view_camera[0]) / 4, depth, obj_fakeeditor_object)){
			var _varnames = []
			var _varvalues = []
			fake_ed_content = ob
			with(instance_create_depth(x, y, depth, obj_null)){
				event_perform_object(_object,ev_create,0)
				_varnames = variable_instance_get_names(id)
				for(var i = 0; i < array_length(_varnames); i++){
					_varvalues[i] = variable_instance_get(id, _varnames[i])
				}
				instance_destroy(id)
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
	global.forcehidecontrols = true
	with(obj_virtual_controller) event_perform(ev_mouse, ev_global_left_button)
	view_w = 960
	view_h = 540
	cx = 0
	cy = 0
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
			var variable = var_array[i];
			if(variable == "musicname" || variable == "content" || variable == "targetRoom" || variable == "sprite" || variable == "tileset")
			{
				if(is_string(variable_instance_get(id, variable)))
				{
					variable_struct_set(objectproperties, variable,variable_instance_get(id, variable))
				} else 
				{
					variable_struct_set(objectproperties, variable,"asset|" + sprite_get_name(variable_instance_get(id, variable)))
				}
				i++
				continue;
			}
			variable_struct_set(objectproperties, variable, variable_instance_get(id, variable))
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
		if(file_exists(filename))
			show_message_async("Level data saved to: " + filename)
		else 
			show_message_async("Failed to save level data.\nCopy the output below:" + liststring)
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
	//if live_call(_tilespr) return live_result;
	var offsetx = obj_fakeeditor.tilemenu_offsetx
	var offsety = obj_fakeeditor.tilemenu_offsety
	draw_set_alpha(0.5) 
	draw_set_color(c_black)
	draw_rectangle(0 + offsetx, 0 + offsety, sprite_get_width(_tilespr) + offsetx, sprite_get_height(_tilespr) + offsety, false)
	draw_set_alpha(1) 
	draw_set_color(c_white)
	draw_sprite(_tilespr, 0, sprite_get_xoffset(_tilespr) + offsetx, sprite_get_yoffset(_tilespr) + offsety)
	var cursorposx = round(clamp(device_mouse_x_to_gui(0), 0 + offsetx, sprite_get_width(_tilespr) + offsetx) / (tile_width + tile_xborder)) * (tile_width + tile_xborder) + tile_xoffset
	var cursorposy = round(clamp(device_mouse_y_to_gui(0), 0 + offsety, sprite_get_height(_tilespr) + offsety) / (tile_height + tile_yborder)) * (tile_height + tile_yborder)  + tile_yoffset
	draw_set_color(c_green)
	draw_rectangle(topleft_x + offsetx, topleft_y + offsety, topleft_x + tile_width + offsetx, topleft_y + tile_height + offsety, true)
	draw_rectangle(bottomleft_x + offsetx, bottomleft_y + offsety, bottomleft_x + tile_width + offsetx, bottomleft_y + tile_height + offsety, true)
	draw_rectangle(topright_x + offsetx, topright_y + offsety, topright_x + tile_width + offsetx, topright_y + tile_height + offsety, true)
	draw_rectangle(bottomright_x + offsetx, bottomright_y + offsety, bottomright_x + tile_width + offsetx, bottomright_y + tile_height + offsety, true)
	draw_rectangle(left_x + offsetx, left_y + offsety, left_x + tile_width + offsetx, left_y + tile_height + offsety, true)
	draw_rectangle(right_x + offsetx, right_y + offsety, right_x + tile_width + offsetx, right_y + tile_height + offsety, true)
	draw_rectangle(bottom_x + offsetx, bottom_y + offsety, bottom_x + tile_width + offsetx, bottom_y + tile_height + offsety, true)
	draw_rectangle(top_x + offsetx, top_y + offsety, top_x + tile_width + offsetx, top_y + tile_height + offsety, true)
	draw_rectangle(middle_x + offsetx, middle_y + offsety, middle_x + tile_width + offsetx, middle_y + tile_height + offsety, true)
	draw_rectangle(single_x + offsetx, single_y + offsety, single_x + tile_width + offsetx, single_y + tile_height + offsety, true)
	draw_set_color(c_white)
	draw_rectangle(cursorposx, cursorposy, cursorposx + tile_width, cursorposy + tile_height, true)
	with(obj_fakeeditor)
	{
		if(tile_swipemode)
		{
			if(mouse_check_button_pressed(mb_left)) {
				t_cx = mouse_x + tilemenu_offsetx;
				t_cy = mouse_y + tilemenu_offsety; 
			}
			if(mouse_check_button(mb_left)) { 
				tilemenu_offsetx = clamp(other.tile_width * -10, round((t_cx - mouse_x) / other.tile_width) * other.tile_width, sprite_get_width(_tilespr) + other.tile_width * 5)
				tilemenu_offsety = clamp(other.tile_height * -10, round((t_cy - mouse_y) / other.tile_height) * other.tile_height, sprite_get_height(_tilespr) + other.tile_height * 5)
			} 
			exit;
		}
	}
	holdclick += mouse_check_button(mb_left)
	if(mouse_check_button_released(mb_left)){
		holdclick = 0
	}
	if(holdclick > 30){
		holdclick = 0
		if(os_type == os_windows){
			mouse_clear(mb_left)
		}
		fake_ed_cursor_pos_x = cursorposx - offsetx
		fake_ed_cursor_pos_y = cursorposy - offsety
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
			with(obj_fakeeditor.selectedent){
				fake_ed_sprite_clicked = false
				fake_ed_hold_menu = 1
				global.fake_ed_tilemenu = 1
			}
		}
	}
	fakeed_istilemenu = false
}
function fakeeditor_create_scale_buttons()
{
	with(obj_fakeeditor_scale) 
	{
		instance_destroy()
	}
	with(instance_create(x + sprite_width - sprite_xoffset, y + (sprite_height / 2) - sprite_yoffset, obj_fakeeditor_scale))
	{
		dir = 0
		depth = other.depth - 1
		object_id = other.id
		object_xscale = other.image_xscale
		object_yscale = other.image_yscale
	}
	with(instance_create(x + (sprite_width / 2) - sprite_xoffset, y + sprite_height - sprite_yoffset , obj_fakeeditor_scale))
	{
		dir = 90
		depth = other.depth - 1
		object_id = other.id
		object_xscale = other.image_xscale
		object_yscale = other.image_yscale
	}
}