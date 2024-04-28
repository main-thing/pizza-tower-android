if(!shoulddraw){
	exit
}
surface_set_target(application_surface)
if(image_xscale == 1 && image_yscale == 1){
	draw_sprite_part_ext(tileset, image_index, single_x, single_y, tile_width, tile_height, x, y, 1, 1, image_blend, image_alpha)
	surface_reset_target()
	exit
}
if(image_xscale == 1){
	draw_sprite_part_ext(tileset, image_index, single_x, single_y, tile_width, tile_height, x, y, 1, 1, image_blend, image_alpha)
	for (var yy = 0; yy < abs(image_yscale) - 1; yy++){
		draw_sprite_part_ext(tileset, image_index, middle_x, middle_y, tile_width, tile_height, x, (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
	}			
	surface_reset_target()
	exit
}
if(image_xscale != 1){
	draw_sprite_part_ext(tileset, image_index, topleft_x, topleft_y, tile_width, tile_height, x, y, 1, 1, image_blend, image_alpha)
	if(abs(image_xscale) > 1){
		for (var xx = 0; xx < abs(image_xscale - 2); xx++){
			if((x + (xx + 4) * tile_width) < (camera_get_view_x(view_camera[0]))) {
				continue;
			}
			if((x + xx * tile_width) > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))) {
				break;
			}
			draw_sprite_part_ext(tileset, image_index, top_x, top_y, tile_width, tile_height, (x + tile_width + (xx * tile_width)), y, 1, 1, image_blend, image_alpha)
			if(abs(image_yscale) > 1){
				for (var yy = 0; yy < abs(image_yscale) - 2; yy++){
					draw_sprite_part_ext(tileset, image_index, middle_x, middle_y, tile_width, tile_height, (x + tile_width + (xx * tile_width)), (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
					draw_sprite_part_ext(tileset, image_index, left_x, left_y, tile_width, tile_height, x, (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
					draw_sprite_part_ext(tileset, image_index, right_x, right_y, tile_width, tile_height, (x + ((image_xscale - 1) * tile_width)), (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
					if((y + (yy + 4) * tile_height) < (camera_get_view_y(view_camera[0]))) {
						continue;
					}
					if((y + yy * tile_height) > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))){
						break;
					}
				}
			}
		}
		draw_sprite_part_ext(tileset, image_index, topright_x, topright_y, tile_width, tile_height, (x + ((image_xscale - 1) * tile_width)), y, 1, 1, image_blend, image_alpha)	
		if(image_yscale > 1){
			draw_sprite_part_ext(tileset, image_index, bottomright_x, bottomright_y, tile_width, tile_height, (x + ((image_xscale - 1) * tile_width)), (y + (abs(image_yscale - 1) * tile_height)), 1, 1, image_blend, image_alpha)
			draw_sprite_part_ext(tileset, image_index, bottomleft_x, bottomleft_y, tile_width, tile_height, x, (y + (abs(image_yscale - 1) * tile_height)), 1, 1, image_blend, image_alpha)
			for (var xx2 = 0; xx2 < abs(image_xscale - 2); xx2++){
				if((x + (xx2 + 4) * tile_width) < (camera_get_view_x(view_camera[0]))) {
					continue;
				}
				if((x + xx2 * tile_width) > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))) {
					break;
				}
				draw_sprite_part_ext(tileset, image_index, bottom_x, bottom_y, tile_width, tile_height, (x + tile_width + (xx2 * tile_width)), (y + (abs(image_yscale - 1) * tile_height)), 1, 1, image_blend, image_alpha)
			}
			for (var yy = 0; yy < abs(image_yscale) - 2; yy++){
				if((y + (yy + 4) * tile_height) < (camera_get_view_y(view_camera[0]))) {
					continue;
				}
				if((y + yy * tile_height) > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))){
					break;
				}
				draw_sprite_part_ext(tileset, image_index, left_x, left_y, tile_width, tile_height, x, (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
				draw_sprite_part_ext(tileset, image_index, right_x, right_y, tile_width, tile_height, (x + ((image_xscale - 1) * tile_width)), (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
			}
		}
		
	} else {
		draw_sprite_part_ext(tileset, image_index, topright_x, topright_y, tile_width, tile_height, (x + tile_width), y, 1, 1, image_blend, image_alpha)
		if(image_yscale > 1){
			for (var yy = 0; yy < abs(image_yscale) - 2; yy++){
				if((y + (yy + 4) * tile_height) < (camera_get_view_y(view_camera[0]))) {
					continue;
				}
				if((y + yy * tile_height) > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))){
					break;
				}
				draw_sprite_part_ext(tileset, image_index, left_x, left_y, tile_width, tile_height, x, (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
				draw_sprite_part_ext(tileset, image_index, right_x, right_y, tile_width, tile_height, (x + ((image_xscale - 1) * tile_width)), (y + tile_height + (yy * tile_height)), 1, 1, image_blend, image_alpha)
			}
		}
	}
}
surface_reset_target()
/*
for (var yy = 0; yy < abs(image_yscale) - 2; yy++){
	draw_sprite(sprite_index, image_index, x, (y + ((sprite_get_height(sprite_index) * yy) * sign(image_yscale))))
}*/
