if(editormode)
{
	if (instance_exists(selectedent) && !in_play_mode)
	{
		var _myvars = variable_instance_get_names(selectedent)
		var return_array = [];
		var clean_index = 0; // Iterate through array1
		for (var i = 0; i < array_length(_myvars); i++) {
			var item = _myvars[i];
			var found = false;
    
			// Check if the current item of array1 is in array2
			for (var j = 0; j < array_length(global.fake_ed_remove_vars); j++) {
				if (item == global.fake_ed_remove_vars[j]) {
					found = true;
					break; // Exit the loop if the item is found in array2
				}
			}
			// If the item is not found in array2, add it to return_array
			if (!found) {
				return_array[clean_index] = item;
				clean_index++;
			}
		}
		_myvars = return_array;
	    draw_set_font(font0)
	    draw_set_alpha(1)
	    draw_set_color(c_white)
	    draw_set_halign(fa_left)
	    for (var i = 0; i <= array_length(_myvars)-1; i++)
	        draw_text_transformed(0, ((i * 10) + 100), ((_myvars[i] + " = ") + string(variable_instance_get(selectedent, _myvars[i]))), 0.8, 0.8, 0)
	}
}
/*
if(!surface_exists(tileselectsurf)){
	tileselectsurf = surface_create_(tileselectsurf_width,tileselectsurf_height)
} else {
	surface_set_target(tileselectsurf);
	draw_clear(c_black)
	if(keyboard_check(vk_space)){
		funnyx -= 1
	}
	draw_sprite(tile_secret,0,0,funnyx)
	surface_reset_target();
	draw_set_color(c_white)
	draw_rectangle(tileselectsurf_x, tileselectsurf_y, tileselectsurf_x + tileselectsurf_width,tileselectsurf_y + tileselectsurf_height,2)
	draw_surface(tileselectsurf, tileselectsurf_x, tileselectsurf_y);
}