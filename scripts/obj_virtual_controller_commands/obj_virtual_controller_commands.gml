#macro COMMANDS_FILE_PATH "/storage/emulated/0/Documents/pizza tower android/commands/"
// old editor stuff
global.door_object_arr = [obj_taxi, obj_arenadoor, obj_startgate, obj_snickchallengedoor, obj_door, obj_keydoor, obj_geromedoor, obj_hallway, obj_secretportal, obj_lapportal]
function processcommand(commandstring,silentcommand = false,is_trigger = false){
	var _string = string_trim(commandstring)
	if(string_pos("gml", _string) == 1) {
		return docommand(_string, silentcommand, is_trigger)
	}
	if(string_pos("startupcommand", _string) == 1) {
		return docommand(_string, silentcommand, is_trigger)
	}
	if(string_pos("savecommand", _string) == 1) {
		return docommand(_string, silentcommand, is_trigger)
	}
	if (string_pos(";", _string) != 0) {
		var _commands = string_split(_string + ";",";")
		var i = 0
		while (i < array_length(_commands)) {
			docommand(_commands[i],silentcommand, is_trigger)
			i++
		}
	} else{
			docommand(_string, silentcommand, is_trigger)
	}
}
function docommand(commandstring,silentcommand = false,is_trigger = false) {
	var playerid = instance_find(obj_player,0) 
	if(playerid == noone){
		playerid = self
	}
	if (string_pos("panic", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						global.panic = true
						global.fill = int64(commands[i]) * 12
						with(obj_tv){
							pizzaface_sprite = spr_timer_pizzaface1
							chunkmax = global.fill
						}
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			if(hasarg2 == false){
				global.panic = true
				global.fill = 0
			}
	}
	if (string_pos("reload_gml", string_lower(commandstring)) == 1) {
		global.nsp_errorcount = 0
		with(obj_custom_object){
			if(step_event_saved != undefined){
				NSP_free_saved(step_event_saved)
			}
			if(draw_event_saved != undefined){
				NSP_free_saved(draw_event_saved)
			}
			if(drawgui_event_saved != undefined){
				NSP_free_saved(drawgui_event_saved)
			}
			if(step_event != ""){
				step_event_saved = NSP_save(step_event)
			}
			if(draw_event != ""){
				draw_event_saved = NSP_save(draw_event)
			}
			if(drawgui_event != ""){
				drawgui_event_saved = NSP_save(drawgui_event)
			}
		}
	}
	if (string_pos("gml", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,4);
		if(string_length(code) > 2){
			global.nsp_errorcount = 0
			try{
				NSP_execute_string(code)
			} catch(err){
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
	if (string_pos("savecommand", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,12);
		var i = 0
		if(string_length(code) > 2){
			var baseFilename = COMMANDS_FILE_PATH + "command";
			var filename = baseFilename + string(i) + ".png";
			while(file_exists(filename)) {
			    filename = baseFilename + string(i) + ".png";
			    i++;
			}
			var file = file_text_open_write(filename)
			file_text_write_string(file,code)
			file_text_close(file);
		}
	}
	if (string_pos("startupcommand", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,15);
		if(string_length(code) > 2){
			var file = file_text_open_write(working_directory + "startupcommand.txt")
			file_text_write_string(file,code)
			file_text_close(file);
		}
	}
	if (string_pos("spawn", string_lower(commandstring)) == 1) {
		try{
			string_split(commandstring, " ");
		} catch(err){
			return get_string_async("string splitting failed, aborting...", err);
		}
		var commands = string_split(commandstring, " ");
		var hasarg2 = false
		var hasarg3 = false
		var distance = 0
		var _object = obj_forknight
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
						hasarg2 = true
					if(object_exists(asset_get_index(commands[i]))){
						_object = asset_get_index(commands[i])
					}
				}
				if(i == 3){
					distance = real(commands[i])
					hasarg3 = true
				}
				if(i >= 3){
					break
				}
		}
		if(hasarg2 == false) {
			if(is_trigger){
				instance_create(self.x, self.y, obj_forknight)
			} else {
				instance_create(playerid.x, playerid.y - 20, obj_forknight)
			}
		} else {	
			if(is_trigger){
				var object = instance_create(self.x + distance, self.y, _object)
			} else{
				if(variable_instance_exists(playerid,"xscale")){
					if(playerid.xscale >= 0){
						var object = instance_create(playerid.x + distance, playerid.y, _object)
					} else {
						var object = instance_create(playerid.x - distance, playerid.y, _object)	
					}
				} else {
					var object = instance_create(playerid.x + distance, playerid.y, _object)
				}
			}
			with(object) 
			{
				for (var i2 = 0; i2 < array_length(global.door_object_arr); i2++) 
				{
					if (global.door_object_arr[i2] == object_index){
						variable_instance_set(id, "targetRoom", room)
					}
				}
			}
			if(instance_exists(obj_fakeeditor_old)){
				if(obj_fakeeditor_old.editormode == 1){
					with(object){
						variable_instance_set(id, "createdbyeditor", 1)
						variable_instance_set(id, "editorplacedroom", room)
						variable_instance_set(id, "oldinstanceeditor", object_get_name(object_index))
						variable_instance_set(id, "persistent", 1)
					}
					alarm[1] = 1
				}
			}
		}
	}
	if (string_pos("play_sound", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			var _audio = sfx_taunt
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if(audio_exists(asset_get_index(commands[i]))){
							_audio = asset_get_index(commands[i])
						}
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			scr_soundeffect(_audio)
	}
	if (string_pos("play_music", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			var _audio = mu_entrance
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if(audio_exists(asset_get_index(commands[i]))){
							_audio = asset_get_index(commands[i])
						}
						hasarg2 = true
					}
					if(i >= 2){
						break
					}
			}
			with(obj_music){
				audio_stop_sound(musicID)
				music = _audio
				musicID = scr_music(music)
			}
	}
	if (string_pos("player_set_state", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
							//show_message("processing")
							// why?
							switch(commands[i]){
								case "states.ratmount":
								case "ratmount":
									with(obj_player1) {
										ratmount_movespeed = 8
										gustavodash = 0
										isgustavo = 1
										state = states.ratmount
									}
								break
								case "states.knightpep":
								case "knightpep":
									with(obj_player1){
									state = states.knightpep
									sprite_index = spr_knightpepidle
									}
								break
								case "states.cheesepep":
								case "cheesepep":
									with(obj_player1){
									state = states.cheesepep
									sprite_index = spr_cheesepep_idle
									}
								break
								case "states.rocket":
								case "rocket":
									with(obj_player1)
									state = states.rocket
								break
								case "states.mort":
								case "mort":
									with(obj_player1)
									state = states.mort
								break
								case "states.normal":
								case "normal":
									with(obj_player1){
									state = states.normal
									isgustavo = 0
									shotgunAnim = 0
									sprite_index = spr_idle
									}
								break
								case "states.shotgun":
								case "shotgun":
									with(obj_player1)
										shotgunAnim = 1
								break
								case "states.boxxedpep":
								case "boxxedpep":
									with(obj_player1)
									state = states.boxxedpep
								break
								case "states.cheeseball":
								case "cheeseball":
									with(obj_player1)
									state = states.cheeseball
								break
								case "states.fireass":
								case "fireass":
									with(obj_player1) {
									state = states.fireass
									vsp = -20
									sprite_index = spr_fireass
									image_index = 0
									movespeed = hsp
									if (!audio_is_playing(sfx_scream5))
										scr_soundeffect(sfx_scream5)
									}
								break
								case "states.firemouth":
								case "firemouth":
									with(obj_player1)
									state = states.firemouth
								break
								case "states.slipnslide":
								case "slipnslide":
									with(obj_player1){
									sprite_index = spr_slipbanan1
									vsp = -11
									movespeed += 2
									if (movespeed > 14)
										movespeed = 14
									hsp = (movespeed * xscale)
									image_index = 0
									state = states.slipbanan
									}
								break
								case "states.rideweenie":
								case "rideweenie":
									with(obj_player1) {
										state = states.rideweenie
										movespeed = hsp
										sprite_index = spr_rideweenie
										xscale = other.image_xscale
										jumpstop = 1
										if (vsp < 0)
										vsp = 0
										}
								break
								case "states.ghost":
								case "ghost":
									with(obj_player1)
									state = states.ghost
								break
								case "states.debugstate":
								case "debugstate":
									with(obj_player1)
									state = states.debugstate
								break
								case "states.clownpep":
								case "clownpep":
									with(obj_player1){
										instance_create(x, y, obj_genericpoofeffect)
										movespeed = 10
										skateboarding = 1
										clowntimer = 150
										state = states.mach2
									}
								break
							}
						}
					if(i >= 2){
						break
					}
				}
			}
			//instance_set_variable obj_player 
		if (string_pos("instance_set_variable", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var ourinstance = undefined
			var tempvarname = undefined
			var tempvartype = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if (asset_get_index(commands[i]) != -1){
							ourinstance = asset_get_index(commands[i])
						} else {
								show_message_async("invalid instance \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
								show_message_async("invalid type \"" + commands[i] + "\" Available types: bool, string, int, float, real, asset")
							break
						}
					}
					if(i == 4){
						tempvarname = commands[i]
						if(!variable_instance_exists(ourinstance,tempvarname)){
								show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 5){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,bool(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set bool")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,int64(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set int")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									variable_instance_set(ourinstance,tempvarname,real(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set real")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									variable_instance_set(ourinstance,tempvarname,commands[i])
									if(!silentcommand) {
										show_message_async("successfully set string")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									variable_instance_set(ourinstance,tempvarname,asset_get_index(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set asset")
									}
								}
							break
						}
					}
					if (i >= 5) {
						break
					}
				}
			}
		if (string_pos("instance_set_variable_all", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var ourinstance = undefined
			var tempvarname = undefined
			var tempvartype = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						if (asset_get_index(commands[i]) != -1){
							ourinstance = asset_get_index(commands[i])
						} else {
								show_message_async("invalid instance \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
								show_message_async("invalid type \"" + commands[i] + "\" Available types: bool, string, int, float, real, asset")
							break
						}
					}
					if(i == 4){
						tempvarname = commands[i]
						if(!variable_instance_exists(ourinstance,tempvarname)){
								show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 5){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,bool(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set bool")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,int64(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set int")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									with(ourinstance){
										variable_instance_set(id,tempvarname,real(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set real")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									with(ourinstance){
										variable_instance_set(id,tempvarname,commands[i])
									}
									if(!silentcommand) {
										show_message_async("successfully set string")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									with(ourinstance){
										variable_instance_set(id,tempvarname,asset_get_index(commands[i]))
									}
									if(!silentcommand) {
										show_message_async("successfully set asset")
									}
								}
							break
						}
					}
					if (i >= 5) {
						break
					}
				}
			}
		if (string_pos("global_set_variable", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var tempvartype = undefined
			var tempvarname = undefined
			var tempvarexists = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						tempvartype = string(commands[i])
						if(tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset"){
							show_message_async("invalid type \"" + commands[i] + "\"")
							break
						}
					}
					if(i == 3){
						tempvarname = commands[i]
						if(!variable_global_exists(tempvarname)){
							show_message_async("variable \"" + commands[i] + "\" does not exist.")
							break
						}
					}
					if(i == 4){
						switch(tempvartype){
							case "bool":
								if(is_bool(bool(commands[i]))){
									variable_global_set(tempvarname,bool(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set bool.")
									}
								}
							break
							case "int":
								if(is_int64(int64(commands[i]))){
									variable_global_set(tempvarname,int64(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set int.")
									}
								}
							break
							case "float":
							case "real":
								if(is_real(real(commands[i]))){
									variable_global_set(tempvarname,real(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set real.")
									}
								}
							break
							case "string":
								if(is_string(commands[i])){
									variable_global_set(tempvarname,commands[i])
									if(!silentcommand) {
										show_message_async("successfully set string.")
									}
								}
							break
							case "asset":
								if(asset_get_index(commands[i]) > -1){
									variable_global_set(tempvarname,asset_get_index(commands[i]))
									if(!silentcommand) {
										show_message_async("successfully set asset.")
									}
								}
							break
						}
					}
					if (i >= 4) {
						break
					}
				}
			}		
		if (string_pos("exec", string_lower(commandstring)) == 1) {
				var _filename = string_delete(commandstring, 0,5);
				if(os_type == os_android){
					if(file_exists(_filename)) {
						var _file = file_text_open_read(_filename)
						var _cmd = file_text_read_string(_file)
						if(string_pos("*",_cmd) == 1){
							_cmd = base64_decode(string_delete(_cmd,1,1))
						}
						docommand(_cmd,true)
						file_text_close(_file)
						//TODO: test if this even works
					} else {
						show_message_async("No command file found at: " + _filename)
					}
				} else {
					file = get_open_filename("commands file|*.txt|*.png", "");
					if (file != "")
					{
					    var _file = file_text_open_read(file);
						var _cmd = file_text_read_string(_file)
						docommand(_cmd,true)
						file_text_close(_file)
					}
				}
		}
		switch (string_lower(commandstring)) {
			case "noclip":
				with(obj_player) {
					if (state != states.debugstate) {
						state = states.debugstate
					} else {
						state = states.normal
					}
				}
				break/*
			case "panic":
				with(obj_player) {
					global.panic = true
					global.fill = 0
				}
				break*/
			case "showcollision":
			case "showcollisions":
				global.showcollisions = !global.showcollisions
				alarm[1]= 1
			break
				case "showcollision true":
				case "showcollisions true":
					global.showcollisions = true
					alarm[1]= 1
				break
				case "showcollision false":
				case "showcollisions false":
					global.showcollisions = false
					alarm[1]= 1
				break
				case "oldasset true":
				case "oldassets true":
					global.oldsprites = true
					with(obj_pizzaboxunopen)
						sprite_index = spr_pizzaboxunopen
					with(obj_pizzaface)
						sprite_index = spr_pizzaface
					alarm[1] = 1
				break
				case "oldasset false":
				case "oldassets false":
					global.oldsprites = false
					with(obj_pizzaboxunopen)
						sprite_index = spr_pizzaboxunopen_1
					with(obj_pizzaface)
						sprite_index = spr_pizzaface_1
					alarm[1] = 1
				break
				case "oldasset":
				case "oldassets":
					global.oldsprites = !global.oldsprites
					if(global.oldsprites){
						with(obj_pizzaboxunopen)
							sprite_index = spr_pizzaboxunopen
						with(obj_pizzaface)
							sprite_index = spr_pizzaface
						with(obj_machalleffect)
							sprite_index = spr_cloudeffect
					} else {
						with(obj_pizzaboxunopen)
							sprite_index = spr_pizzaboxunopen_1
						with(obj_pizzaface)
							sprite_index = spr_pizzaface_1
						with(obj_machalleffect)
							sprite_index = spr_cloudeffect_1
					}
					alarm[1] = 1
				break
				case "heatmeter true":
					global.heatmetervisible = true
				break
				case "heatmeter false":
					global.heatmetervisible = false
				break
				case "heatmeter":
				case "heatmetertoggle":
					global.heatmetervisible = !global.heatmetervisible
				break
				case "finalmoveset true":
					with(obj_player){
						finalmoveset = true
						input_buffer_jump = 0
						input_buffer_slap = 0
					}
				break
				case "finalmoveset false":
					with(obj_player){
						finalmoveset = false
						input_buffer_jump = 8
						input_buffer_slap = 8
					}
				break
				case "finalmoveset":
					with(obj_player){
						finalmoveset = !finalmoveset
						input_buffer_jump = finalmoveset ? 0 : 8
						input_buffer_slap = finalmoveset ? 0 : 8
					}
				break
				case "enablerank true":
				case "enableranks true":
					global.showrank = true
				break
				case "enablerank false":
				case "enableranks false":
					global.showrank = false
				break
				case "enablerank":
				case "enableranks":
					global.showrank = !global.showrank
				break
				case "hidetile":
				case "hidetiles":
					layer_set_visible(layer_get_id("Tiles_BG"),false)
					layer_set_visible(layer_get_id("Tiles_BG2"),false)
					layer_set_visible(layer_get_id("Tiles_BG3"),false)
					layer_set_visible(layer_get_id("Tiles_1"),false)
					layer_set_visible(layer_get_id("Tiles_2"),false)
					layer_set_visible(layer_get_id("Tiles_3"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground1"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground2"),false)
					layer_set_visible(layer_get_id("Tiles_Foreground3"),false)
				break
				case "showtile":
				case "showtiles":
					global.hidetiles = false
					layer_set_visible(layer_get_id("Tiles_BG"),true)
					layer_set_visible(layer_get_id("Tiles_BG2"),true)
					layer_set_visible(layer_get_id("Tiles_BG3"),true)
					layer_set_visible(layer_get_id("Tiles_1"),true)
					layer_set_visible(layer_get_id("Tiles_2"),true)
					layer_set_visible(layer_get_id("Tiles_3"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground1"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground2"),true)
					layer_set_visible(layer_get_id("Tiles_Foreground3"),true)
					// why
				break
				case "toggletile":
				case "toggletiles":
					global.hidetiles = !global.hidetiles
						layer_set_visible(layer_get_id("Tiles_BG"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_BG2"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_BG3"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_1"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_2"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_3"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_Foreground1"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_Foreground2"),global.hidetiles)
						layer_set_visible(layer_get_id("Tiles_Foreground3"),global.hidetiles)
				break
				case "character m":
				case "character pepperman":
					with (obj_player1)
					{
						character = "M"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character s":
				case "character snick":
					with (obj_player1)
					{
						character = "S"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character v":
				case "character vigilante":
					with (obj_player1)
					{
						character = "V"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character p":
				case "character peppino":
					with (obj_player1)
					{
						character = "P"
						ispeppino = 1
						scr_characterspr()
					}
				break
				case "character n":
				case "character oldnoise":
					with (obj_player1)
					{
						character = "N"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character noise":
					with (obj_player1)
					{
						character = "P"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character2 m":
				case "character2 pepperman":
					with (obj_player2)
					{
						character = "M"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character2 s":
				case "character2 snick":
					with (obj_player2)
					{
						character = "S"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character2 v":
				case "character2 vigilante":
					with (obj_player2)
					{
						character = "V"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character2 p":
				case "character2 peppino":
					with (obj_player2)
					{
						character = "P"
						ispeppino = 1
						scr_characterspr()
					}
				break
				case "character2 n":
				case "character2 oldnoise":
					with (obj_player2)
					{
						character = "N"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "character2 noise":
					with (obj_player2)
					{
						character = "P"
						ispeppino = 0
						scr_characterspr()
					}
				break
				case "togglebinds":
					global.showbinds = !global.showbinds
				break
				case "toggleoldeditor":
					obj_fakeeditor_old.editormode = !obj_fakeeditor_old.editormode
				break
				case "toggleoldhud":
					global.oldhud = !global.oldhud
				break
				case "help":
					get_string_async("Available Commands: ","noclip, showcollisions <boolean>, panic <seconds>, oldassets <boolean>, enableranks <boolean>, hidetiles, showtiles, toggletiles, character <string>, player_set_state <states.state>,instance_set_variable <obj_> <type> <variablename> <new value>,global_set_variable <type> <variablename> <new value>,spawn <obj_> <optional distance>, play_sound <sound>, play_music <sound>, togglebinds, gml <gml_code>, instance_set_variable_all <obj_> <type> <variablename> <new value>, reload_gml, toggleoldeditor, toggleoldhud, finalmoveset, heatmetertoggle, exec <filename>, savecommand <commands>")
				break
	}
}