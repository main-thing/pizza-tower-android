if(object_exists(asset_get_index(fake_ed_content))){
	sprite_index = object_get_sprite(asset_get_index(fake_ed_content))
	if(fake_ed_content == "obj_sprite" || fake_ed_content == "obj_sprite_gui"){
		if(variable_instance_exists(id,"sprite")){
			sprite_index = sprite
		}
	}
	if(fake_ed_content == "obj_teleporter"){
		if(start == 0){
			sprite_index = spr_teleportmachine
		}
	}
	switch(sprite_index){
		case spr_doorunvisited:
			mask_index = spr_doorvisited
		break
		case spr_goldendoorunvisited:
			mask_index = spr_goldendoorvisited
		break
		default:
			mask_index = -1
		break
	}
}
if(instance_exists(obj_fakeeditor)){	
	if(sprite_exists(sprite_index)){
		draw_self()
	}
	if(!obj_fakeeditor.in_play_mode && !global.fake_ed_tilemenu){
		if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
			fake_ed_old_sprite_x = x - device_mouse_x_to_gui(0)
			fake_ed_old_sprite_y = y - device_mouse_y_to_gui(0)
			fake_ed_click_x = x
			fake_ed_click_y = y
			fake_ed_sprite_clicked = true
			with(obj_fakeeditor){	
				selectedent = other.id
				if(instance_exists(transfotip)){
					instance_destroy(transfotip)
				}
				transfotip = instance_create(0,0,obj_transfotip)
				with(transfotip)
				{
					text = ("{u}SELECTED " + string_upper(other.selectedent.fake_ed_content) + "/")
				}
			}
		}	
		if(fake_ed_content == "obj_camera_bounds_trigger" || fake_ed_content == "obj_camera_bounds_trigger_door"){
			draw_set_color(c_white)
			draw_rectangle(x + camera_x, (y + camera_y) - camera_height, x + camera_width, (y + camera_y), true)
		}
	}
}