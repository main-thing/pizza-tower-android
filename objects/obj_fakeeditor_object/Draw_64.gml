if(fake_ed_content == "obj_solid_tiled" || fake_ed_content == "obj_tiled"){
	if(fake_ed_debug){
		draw_set_color(c_white)
		draw_text(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)+20,string(point_in_rectangle(mouse_x, mouse_y, fake_ed_click_x, fake_ed_click_y, fake_ed_click_x + sprite_width, fake_ed_click_y + sprite_height)))
		draw_text(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),string(fake_ed_hold_click))
		draw_set_color(c_green)
		draw_text(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)+40,string(fake_ed_hold_menu))
		draw_text(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)+60,string(global.fake_ed_tilemenu))
	}
	if(instance_exists(obj_fakeeditor)){
		if(obj_fakeeditor.selectedent == id && fake_ed_hold_menu){
			global.fake_ed_tilemenu = 1
			draw_tileset_picker(tileset)
		}
	}
}