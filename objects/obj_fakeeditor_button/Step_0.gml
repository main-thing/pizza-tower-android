if(!instance_exists(obj_fakeeditor)){
	return instance_destroy()
}
if(button_name == "play"){
	if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		button_pressed = true
		fakeeditor_play_level()
	}
	if(mouse_check_button_released(mb_left)){
		button_pressed = false
	}
	if(button_pressed){
		sprite_index = spr_edbutton_play_pressed
	} else {
		sprite_index = spr_edbutton_play
	}
}
if(button_name == "object"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = true
			fakeeditor_ask_object()
		}
		if(mouse_check_button_released(mb_left)){
			button_pressed = false
		}
	}
	if(button_pressed){
		sprite_index = spr_edbutton_object_pressed
	} else {
		sprite_index = spr_edbutton_object
	}
}

if(button_name == "grid"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			fakeeditor_toggle_grid()
		}
	}
	if(obj_fakeeditor.grid_mode){
		sprite_index = spr_edbutton_grid_pressed
	} else {
		sprite_index = spr_edbutton_grid
	}
	
}

if(button_name == "edit"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = true
			fakeeditor_ask_edit()
		}
		if(mouse_check_button_released(mb_left)){
			button_pressed = false
		}
	}
	if(button_pressed){
		sprite_index = spr_edbutton_edit_pressed
	} else {
		sprite_index = spr_edbutton_edit
	}
}
if(button_name == "delete"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = true
			fakeeditor_delete_object()
		}
		if(mouse_check_button_released(mb_left)){
			button_pressed = false
		}
	}
	if(button_pressed){
		sprite_index = spr_edbutton_delete_pressed
	} else {
		sprite_index = spr_edbutton_delete
	}
}
if(button_name == "copy"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = true
			fakeeditor_copy_object()
		}
		if(mouse_check_button_released(mb_left)){
			button_pressed = false
		}
	}
	if(button_pressed){
		sprite_index = spr_edbutton_copy_pressed
	} else {
		sprite_index = spr_edbutton_copy
	}
}
if(button_name == "swipe"){
	if(!obj_fakeeditor.in_play_mode){
		if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = true
			fakeeditor_toggle_swipe()
		}
		if(mouse_check_button_released(mb_left) || !position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
			button_pressed = false
		}
	}
	if(obj_fakeeditor.swipemode){
		sprite_index = spr_edbutton_swipe_pressed
	} else {
		sprite_index = spr_edbutton_swipe
	}
}

if(obj_fakeeditor.in_play_mode){
	image_alpha = 0
	if(button_name = "play"){
		image_alpha = 0.5
	}
} else {
	image_alpha = 1
}
if(mouse_check_button_pressed(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
	with(obj_fakeeditor){
		selectedent = oldselectedent
		if(instance_exists(selectedent)){
			selectedent.fake_ed_sprite_clicked = false
		}
	}
}