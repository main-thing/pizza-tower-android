if (editormode && !in_play_mode)
{
	if(grid_mode)
	{
	    draw_set_alpha(0.5)
		draw_set_color(c_black)
		for (var i = 0; i <= room_width; i += grid_size) 
		{
			draw_line(i, 0, i, room_height);
		}
		for (var i = 0; i <= room_height; i += grid_size) 
		{
			draw_line(0, i, room_width, i);
		}
	}
	
	if(instance_exists(selectedent))
	{
		if (sprite_exists(selectedent.sprite_index))
		    spr = selectedent.sprite_index
		else
		    spr = spr_wall
		draw_sprite_ext(spr, selectedent.image_index, selectedent.x, selectedent.y, selectedent.image_xscale, selectedent.image_yscale, selectedent.image_angle, c_red, 0.3)
	}
	draw_set_color(c_white)
	draw_rectangle(0,0,room_width,room_height,true)
}
