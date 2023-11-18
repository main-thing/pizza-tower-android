vkeychecker = -1
vkeychecker2 = -1
vkeycounter = 0
mouseon = 0
pressed = false 
pulse = 1
hduei = undefined
djoiksa = undefined
dwnxed = undefined
ndskld = undefined
nejdmsx = ""
dsnxjk = undefined
door_object_arr = [obj_taxi, obj_arenadoor, obj_startgate, obj_snickchallengedoor, obj_door, obj_keydoor, obj_geromedoor, obj_hallway, obj_secretportal, obj_lapportal]
depth = -19999
old_button_x = x
old_button_y = y
//TODO: READ FROM AN EXTERNAL INI FILE SO PEOPLE CAN MAKE CUSTOM LANGAUAGES FOR TEXT HERE.
if (mysprite != undefined) {
	sprite_index = mysprite
}
image_alpha = myusualalpha
persistent = true
function createvbutton(loadedbutton){
	with(instance_create_depth(0, 0, depth, obj_virtual_controller)) {
				if(variable_struct_exists(loadedbutton,"x")){
					x = loadedbutton.x
				}
				if(variable_struct_exists(loadedbutton,"y")){
					y = loadedbutton.y
				}
				if(variable_struct_exists(loadedbutton,"bklock")){
					buttonlockable = loadedbutton.bklock
				} else{
					buttonlockable = false
				}
				if(variable_struct_exists(loadedbutton,"image_angle")){
					image_angle = loadedbutton.image_angle
				}
				if(variable_struct_exists(loadedbutton,"sprite_name")){
					if (loadedbutton.sprite_name != undefined && loadedbutton.sprite_name != "null") {
						sprite_index = spr_button_z
						if(sprite_exists(asset_get_index(loadedbutton.sprite_name))){
							sprite_index = asset_get_index(loadedbutton.sprite_name)
						}
					} else {
						sprite_index = spr_button_z
					}
				} else {
					sprite_index = spr_button_z
				}
				if(variable_struct_exists(loadedbutton,"image_xscale")){
					image_xscale = loadedbutton.image_xscale
				}
				if(variable_struct_exists(loadedbutton,"image_index")){
					image_index = loadedbutton.image_index
				}
				if(variable_struct_exists(loadedbutton,"image_yscale")){
					image_yscale = loadedbutton.image_yscale
				}
				if(variable_struct_exists(loadedbutton,"image_speed")){
					image_speed = loadedbutton.image_speed
				}
				if(variable_struct_exists(loadedbutton,"realcolor")){
					image_blend = loadedbutton.realcolor
					realcolor = loadedbutton.realcolor
				} else {
					realcolor = c_white
				}
				if(variable_struct_exists(loadedbutton,"balpha")){
					myusualalpha = loadedbutton.balpha
					image_alpha = loadedbutton.balpha
				} else {
					myusualalpha = 0.5
					image_alpha = 0.5
				}
				if(variable_struct_exists(loadedbutton,"bk")){
					if(string(loadedbutton.bk) != "null") {
						keycode = loadedbutton.bk
					}
				}
				if(variable_struct_exists(loadedbutton,"bk2")){
					if(string(loadedbutton.bk2) != "null") {
						keycode2 = loadedbutton.bk2
					}
				}
			}
}
function virtual_key_save(export = false) {
	var mybuttons = array_create(0)
	with(obj_virtual_controller) {
		if (!is_string(keycode) && !is_string(keycode2) || keycode == "debug" || keycode == "bind") {
		var buttonproperties = {
			bk: keycode,
			bk2: keycode2,
			bklock: buttonlockable,
			x: x,
			y: y,
			image_angle: image_angle,
			image_xscale: image_xscale,
			image_yscale: image_yscale,
			image_speed: image_speed,
			image_index: image_index,
			realcolor: realcolor,
			balpha: myusualalpha,
			sprite_name: sprite_get_name(sprite_index)
		}
		array_push(mybuttons,buttonproperties)
		}
	}
	if(export) {
		get_string_async("Controls Save Code: ", json_stringify(mybuttons))
		clipboard_set_text(json_stringify(mybuttons))
		return
	}
	var buttonstring = json_stringify(mybuttons)
	var buttonbuffer = buffer_create(string_byte_length(buttonstring) + 1, buffer_fixed, 1)
	buffer_write(buttonbuffer, buffer_string, buttonstring)
	buffer_save(buttonbuffer, "buttonpositions.save")
	buffer_delete(buttonbuffer)
}
function virtual_key_load(buttonstring2 = "") {
	if (file_exists("buttonpositions.save") && buttonstring2 == "") || (file_exists("buttonpositions.save") && buttonstring2 == "load") {
		with(obj_virtual_controller) {
			if (!is_string(keycode) && !is_string(keycode2) || keycode == "debug" || keycode == "bind") {
				instance_destroy()
			}
		}
		var buttonbuffer = buffer_load("buttonpositions.save")
		var buttonstring = buffer_read(buttonbuffer, buffer_string)
		buffer_delete(buttonbuffer)
		
		var buttonload = json_parse(buttonstring)
		while(array_length(buttonload) > 0) {
			var loadedbutton = array_pop(buttonload)
			createvbutton(loadedbutton)
		}
	} else {
		with(obj_virtual_controller) {
			if (!is_string(keycode) && !is_string(keycode2) || keycode == "debug" || keycode == "bind") {
					instance_destroy()
			}
		}
		var buttonload = ""
		if(buttonstring2 != "" && buttonstring2 != "default") {
			buttonload = json_parse(buttonstring2)
		} else {
			buttonload = json_parse("[{\"x\": 928.0, \"y\": 32.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 27.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_escape\" }, { \"x\": 896.0, \"y\": 416.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 16.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_shift\" }, { \"x\": 800.0, \"y\": 480.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 67.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_c\" }, { \"x\": 800.0, \"y\": 352.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 90.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_z\" }, { \"x\": 704.0, \"y\": 416.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 88.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_x\" }, { \"x\": 224.0, \"y\": 416.0, \"image_xscale\": 1.0, \"image_yscale\": 1.0, \"image_angle\": -90.0, \"bk\": 39.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_virtual_controller\" }, { \"x\": 128.0, \"y\": 352.0, \"image_xscale\": 1.0, \"image_yscale\": 1.0, \"image_angle\": 0.0, \"bk\": 38.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_virtual_controller\" }, { \"x\": 128.0, \"y\": 480.0, \"image_xscale\": 1.0, \"image_yscale\": 1.0, \"image_angle\": 180.0, \"bk\": 40.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_virtual_controller\" }, { \"x\": 32.0, \"y\": 416.0, \"image_xscale\": 1.0, \"image_yscale\": 1.0, \"image_angle\": -270.0, \"bk\": 37.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_virtual_controller\" }, { \"x\": 64.0, \"y\": 288.0, \"image_xscale\": 1.5, \"image_yscale\": 1.5, \"image_angle\": 0.0, \"bk\": 90.0, \"bk2\": null, \"bklock\": 0.0, \"sprite_name\": \"spr_button_z\"}]")
		}
		while(array_length(buttonload) > 0) {
			var loadedbutton = array_pop(buttonload)
			createvbutton(loadedbutton)
		}
	}
}
function processcommand(commandstring,silentcommand = false){
	var _string = string_trim(commandstring)
	if(string_pos("gml", _string) == 1) {
		return docommand(_string, silentcommand)
	}
	if (string_pos(";", _string) != 0) {
		var _commands = string_split(_string + ";",";")
		var i = 0
		while (i < array_length(_commands)) {
			docommand(_commands[i],silentcommand)
			i++
		}
	} else{
			docommand(_string, silentcommand)
	}
}
function docommand(commandstring,silentcommand = false) {
	if (string_pos("panic", string_lower(commandstring)) == 1) {
			var commands = string_split(commandstring, " ");
			var hasarg2 = false
			for (var i = 1;i < array_length(commands);i++) {
					if(i == 2){
						global.panic = true
						global.fill = int64(commands[i]) * 12
						with(obj_tv){
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
	if (string_pos("gml", string_lower(commandstring)) == 1) {
		var code = string_delete(commandstring,1,4);
		if(string_length(code) > 2){
			execute_string(code)
		}
	}
	if (string_pos("spawn", string_lower(commandstring)) == 1) {
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
				instance_create(obj_player1.x, obj_player1.y - 20, obj_forknight)
			} else{
							if(obj_player1.xscale >= 0){
								var object = instance_create(obj_player1.x + distance, obj_player1.y, _object)
							} else {
								var object = instance_create(obj_player1.x - distance, obj_player1.y, _object)	
							}
							with(object) 
							{
								for (var i2 = 0; i2 < array_length(other.door_object_arr); i2++) 
								{
									if (other.door_object_arr[i2] == object_index){
										variable_instance_set(id, "targetRoom", room)
									}
								}
							}
							if(instance_exists(obj_fakeeditor)){
								if(obj_fakeeditor.editormode == 1){
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
									sprite_index = spr_idle
									}
								break
								case "states.shotgun":
								case "shotgun":
									with(obj_player1)
									state = states.shotgun
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
					switch(global.oldsprites) {
						case true:
						with(obj_pizzaboxunopen)
							sprite_index = spr_pizzaboxunopen
						with(obj_pizzaface)
							sprite_index = spr_pizzaface
						with(obj_machalleffect)
							sprite_index = spr_cloudeffect
						break
						case false:
						with(obj_pizzaboxunopen)
							sprite_index = spr_pizzaboxunopen_1
						with(obj_pizzaface)
							sprite_index = spr_pizzaface_1
						with(obj_machalleffect)
							sprite_index = spr_cloudeffect_1
						break 
					}
					alarm[1] = 1
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
					global.hidetiles = true
				break
				case "showtile":
				case "showtiles":
					global.hidetiles = false
				break
				case "toggletile":
				case "toggletiles":
					global.hidetiles = !global.hidetiles
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
					if(global.showbinds){
						global.showbinds = false
					} else {
						global.showbinds = true
					}
					audio_resume_all()
				break
				case "help":
					get_string_async("Available Commands: ","noclip, showcollisions <boolean>, panic <seconds>, oldassets <boolean>, enableranks <boolean>, hidetiles, showtiles, toggletiles, character <string>, player_set_state <states.state>,instance_set_variable <obj_> <type> <variablename> <new value>,global_set_variable <type> <variablename> <new value>,spawn <obj_> <optional distance>, play_sound <sound>, play_music <sound>, togglebinds, gml <gml_code>")
				break
	}
}
function processedit(commandstring) {
	
	if (string_pos("gridsize", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _gridsize = 0 // default
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_gridsize = real(commands[i])
					if(_gridsize <= 1){
						_gridsize = 1
					}
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			global.vkeysgrid_size = _gridsize
		}
		return
	}
	if (global.selectedvbutton == undefined) {
		return show_message_async("A button is not selected.")
	}
	if (string_pos("color", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _red = 0
		var _green = 0
		var _blue = 0
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_red = int64(commands[i])
					argcount++
				}
				if(i == 3){
					_green = int64(commands[i])
					argcount++
				}
				if(i == 4){
					_blue = int64(commands[i])
					argcount++
				}
				if(i >= 4){
					break
				}
			}
		if(argcount == 3){
			with(global.selectedvbutton){
				realcolor = make_color_rgb(_red, _green, _blue)
			}
		}
	}
	if (string_pos("scale", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _scale = 1
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_scale = real(commands[i])
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			with(global.selectedvbutton){
				image_xscale = _scale
				image_yscale = _scale
			}
		}
	}
	if (string_pos("alpha", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _alpha = 1
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_alpha = real(commands[i])
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			with(global.selectedvbutton){
				myusualalpha = _alpha
				image_alpha = _alpha
			}
		}
	}
	if (string_pos("sprite", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _sprite = spr_button_z
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					if(sprite_exists(asset_get_index(commands[i]))){
						_sprite = asset_get_index(commands[i])
					}
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			with(global.selectedvbutton){
				sprite_index = _sprite
			}
		}
	}
	if (string_pos("image_speed", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _speed = 0.35 // default
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_speed = real(commands[i])
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			with(global.selectedvbutton){
				image_speed = _speed
			}
		}
	}
	if (string_pos("framenumber", string_lower(commandstring)) == 1) {
		var commands = string_split(commandstring, " ");
		var argcount = 0
		var _imageindex = 0 // default
		for (var i = 1;i < array_length(commands);i++) {
				if(i == 2){
					_imageindex = real(commands[i])
					argcount++
				}
				if(i >= 2){
					break
				}
		}
		if(argcount == 1){
			with(global.selectedvbutton){
				image_index = _imageindex
			}
		}
	}
}