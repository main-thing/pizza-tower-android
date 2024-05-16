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

function processedit(commandstring) {
	var _string = string_trim(commandstring)
	if (string_pos(";", _string) != 0) {
		var _commands = string_split(_string + ";",";")
		var i = 0
		while (i < array_length(_commands)) {
			doedit(_commands[i])
			i++
		}
	} else{
			doedit(_string)
	}
}

function doedit(commandstring){
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
input = function (_touch_id, _touch_x, _touch_y, _click)
{
	if(!_click){
		return;
	}
	if(buttonlockable || keycode == "bind"){
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