function scr_destroy_tiles(_a0, _a1, _a2 = 0)
{
	var lay_id = layer_get_id(_a1)
	if (lay_id != -1)
	{
		var map_id = layer_tilemap_get_id(lay_id)
		var w = (abs(sprite_width) / _a0)
		var h = (abs(sprite_height) / _a0)
		var ix = sign(image_xscale)
		var iy = sign(image_yscale)
		if (ix < 0)
			w++
		for (var yy = (0 - _a2); yy < (h + _a2); yy++)
		{
			for (var xx = (0 - _a2); xx < (w + _a2); xx++)
				scr_destroy_tile((x + ((xx * _a0) * ix)), (y + ((yy * _a0) * iy)), map_id)
		}
	}
}

function scr_destroy_tile(_a0, _a1, _a2)
{
	var data = tilemap_get_at_pixel(_a2, _a0, _a1)
	data = tile_set_empty(data)
	tilemap_set_at_pixel(_a2, data, _a0, _a1)
}

function scr_solid_line(_a0)
{
	if (collision_line(x, y, _a0.x, _a0.y, obj_solid, false, true) != -4)
		return true;
	if (collision_line(x, y, _a0.x, _a0.y, obj_slope, false, true) != -4)
		return true;
	return false;
}

function scr_destroy_nearby_tiles()
{
	instance_destroy(instance_place((x + 1), y, obj_tiledestroy))
	instance_destroy(instance_place((x - 1), y, obj_tiledestroy))
	instance_destroy(instance_place(x, (y + 1), obj_tiledestroy))
	instance_destroy(instance_place(x, (y - 1), obj_tiledestroy))
}
