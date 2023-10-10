for (var i = 0; i < abs(image_yscale); i++)
	draw_sprite(sprite_index, image_index, x, (y + ((sprite_get_height(sprite_index) * i) * sign(image_yscale))))
