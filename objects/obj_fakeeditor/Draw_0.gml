if (editormode && !in_play_mode)
{
	if(instance_exists(selectedent)){
		if (selectedent.sprite_index > -1 && sprite_exists(selectedent.sprite_index))
		    spr = selectedent.sprite_index
		else
		    spr = spr_wall
		frame = selectedent.image_index
		obj_x = selectedent.x
		obj_y = selectedent.y
		obj_xscale = selectedent.image_xscale
		obj_yscale = selectedent.image_yscale
		obj_angle = selectedent.image_angle
		draw_sprite_ext(spr, frame, obj_x, obj_y, obj_xscale, obj_yscale, obj_angle, c_red, 0.3)
	}
	draw_set_color(c_white)
	draw_rectangle(0,0,room_width,room_height,true)
}
