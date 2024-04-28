function fakeeditor_play_level(){
	if(!obj_fakeeditor.in_play_mode) {
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
					for (var j = 0; j < array_length(fake_ed_remove_vars); j++) {
					    if (item == fake_ed_remove_vars[j]) {
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
		scr_resize_room(0,room_height,room_width,room_height)
		global.forcehidecontrols = 0
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
	fakeeditor_edit = get_string_async("save, load, delete level.", nejdmssx)
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
			fake_ed_remove_vars = variable_instance_get_names(id)
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
    var commands = string_split(argument0, " ")
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
	cx = camera_get_view_x(view_camera[0])
	cy = camera_get_view_y(view_camera[0])
	mouse_xprevious = device_mouse_x_to_gui(0)
	mouse_yprevious = device_mouse_y_to_gui(0)
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
	cx = camera_get_view_x(view_camera[0])
	cy = camera_get_view_y(view_camera[0])
	var mx = device_mouse_x_to_gui(0)
	var my = device_mouse_y_to_gui(0)
	if(obj_fakeeditor.swipemode && mouse_check_button(mb_left))
	{
		cx += ((mouse_xprevious - mx) * (zoom * drag_speed))
		cy += ((mouse_yprevious - my) * (zoom * drag_speed))
	}
	mouse_xprevious = mx
	mouse_yprevious = my
	zoom = clamp(zoom, 0.5, 8)
	camera_set_view_pos(view_camera[0], cx, cy)
	camera_set_view_size(view_camera[0], (view_w * zoom), (view_h * zoom))
	surface_resize(application_surface, (view_w * zoom), (view_h * zoom))
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
		}
        var i = 0
        var var_array = variable_instance_get_names(id)
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
				variable_struct_set(objectproperties,var_array[i],"asset|" + sprite_get_name(variable_instance_get(id,var_array[i])))
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
    get_string_async("copy string", liststring)
	// here cause windows does not show full string
	var levelbuffer = buffer_create(string_byte_length(liststring) + 1, buffer_fixed, 1)
	buffer_write(levelbuffer, buffer_string, liststring)
	buffer_save(levelbuffer, "levels/level.txt")
	buffer_delete(levelbuffer)
}
function fakeeditor_load_editor_objects(argument0)
{
    if ((!is_string(argument0)) || argument0 == "")
        show_message_async("No input provided")
    else
    {
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
function call_alarm(alarmid,delay,instance = noone){
	if(instance_exists(instance)){
		instance.alarm[alarmid] = delay
	} else {
		alarm[alarmid] = delay
	}
}
function set_view_surface(_id,surf){
	view_surface_id[_id] = surf
}
function draw_tileset_picker(_tilespr){
	draw_set_alpha(0.5) 
	draw_set_color(c_black)
	draw_rectangle(0, 0, sprite_get_width(_tilespr), sprite_get_height(_tilespr), false)
	draw_set_alpha(1) 
	draw_set_color(c_white)
	draw_sprite(_tilespr,0,sprite_get_xoffset(_tilespr),sprite_get_yoffset(_tilespr))
	var cursorposx = round(clamp(device_mouse_x_to_gui(0), 0, sprite_get_width(_tilespr)) / tile_width) * tile_width
	var cursorposy = round(clamp(device_mouse_y_to_gui(0), 0, sprite_get_height(_tilespr)) / tile_height) * tile_height
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
function array_get_index(value,array){
	for(var __index=-1,i=0;i<array_length(array);i++)
		if(value==array[i]){
			__index=i;
			break
		}
	return __index
}
function add_music_array(mainsong,secretsong,override){
	with(obj_music){
		array_push(room_arr,[mainsong,secretsong,override]) // music support or something for gml commands
	}
}