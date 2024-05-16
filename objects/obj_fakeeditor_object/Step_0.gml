if(instance_exists(obj_fakeeditor)){
	if(!obj_fakeeditor.in_play_mode){
		fake_ed_grid_size = obj_fakeeditor.grid_size
		fake_ed_grid_mode = obj_fakeeditor.grid_mode
		fake_ed_grid_size = clamp(fake_ed_grid_size,1,4926)
		if(obj_fakeeditor.selectedent == id){
			if(mouse_check_button(mb_left) && fake_ed_sprite_clicked && !fake_ed_hold_menu){
				x = fake_ed_old_sprite_x + device_mouse_x_to_gui(0)
				y = fake_ed_old_sprite_y + device_mouse_y_to_gui(0) 
				if(fake_ed_grid_mode){
					x = round(x / fake_ed_grid_size) * fake_ed_grid_size
					y = round(y / fake_ed_grid_size) * fake_ed_grid_size
				}
			}
			fake_ed_hold_click += mouse_check_button(mb_left)
			if(mouse_check_button_released(mb_left)){
				fake_ed_hold_click = 0
			}
			// cause of unselectable objects when negative size
			if(point_in_rectangle(mouse_x, mouse_y, fake_ed_click_x, fake_ed_click_y, fake_ed_click_x + sprite_width, fake_ed_click_y + sprite_height) && fake_ed_hold_click > 30 && !fake_ed_hold_menu){
				fake_ed_hold_click = 0
				if(!global.option_editor_oldedit){
					if(fake_ed_content == "obj_solid_tiled" || fake_ed_content == "obj_tiled"){
						fake_ed_edit_var = get_string_async("Set object variable (<type> <variablename> <new value>), tilemenu", fake_ed_edit_string)
					} else {
						fake_ed_edit_var = get_string_async("Set object variable (<type> <variablename> <new value>)", fake_ed_edit_string)
					}
					if(os_type == os_windows){
						mouse_clear(mb_left)
					}
				}
			}
		} else {
			fake_ed_hold_click = 0
			fake_ed_hold_menu = 0
			global.fake_ed_tilemenu = 0
		}
	}
}