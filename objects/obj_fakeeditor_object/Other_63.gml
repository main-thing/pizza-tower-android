var i_d = ds_map_find_value(async_load, "id")
if (i_d == fake_ed_edit_var)
{
	if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != ""){
            fake_ed_edit_string = ds_map_find_value(async_load, "result")
			if(fake_ed_content == "obj_solid_tiled" || fake_ed_content == "obj_tiled"){
				if(string_lower(fake_ed_edit_string) != "tilemenu"){
					with(obj_fakeeditor){
						fakeeditor_edit_object_var(other.fake_ed_edit_string)
					}
				} else {
					if(fake_ed_edit_string == "tilemenu"){
						fake_ed_hold_menu = 1
						global.fake_ed_tilemenu = 1
					}
				}
			} else {
				with(obj_fakeeditor){
					fakeeditor_edit_object_var(other.fake_ed_edit_string)
				}
			}
		}
	}
}
if (i_d == fake_ed_tile_string)
{
	if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != ""){
			var tilestring = ds_map_find_value(async_load, "result")
			switch(tilestring){
				case "top":
					top_x = fake_ed_cursor_pos_x
					top_y = fake_ed_cursor_pos_y
				break
				case "bottom":
					bottom_x = fake_ed_cursor_pos_x
					bottom_y = fake_ed_cursor_pos_y
				break
				case "left":
					left_x = fake_ed_cursor_pos_x
					left_y = fake_ed_cursor_pos_y
				break
				case "right":
					right_x = fake_ed_cursor_pos_x
					right_y = fake_ed_cursor_pos_y
				break
				case "topright":
					topright_x = fake_ed_cursor_pos_x
					topright_y = fake_ed_cursor_pos_y
				break
				case "bottomright":
					bottomright_x = fake_ed_cursor_pos_x
					bottomright_y = fake_ed_cursor_pos_y
				break
				case "topleft":
					topleft_x = fake_ed_cursor_pos_x
					topleft_y = fake_ed_cursor_pos_y
				break
				case "bottomleft":
					bottomleft_x = fake_ed_cursor_pos_x
					bottomleft_y = fake_ed_cursor_pos_y
				break
				case "middle":
					middle_x = fake_ed_cursor_pos_x
					middle_y = fake_ed_cursor_pos_y
				break
				case "single":
					single_x = fake_ed_cursor_pos_x
					single_y = fake_ed_cursor_pos_y
				break
				case "closemenu":
				case "close menu":
					global.fake_ed_tilemenu = 0
					fake_ed_hold_menu = 0
				break
			}
		}
	}
}
