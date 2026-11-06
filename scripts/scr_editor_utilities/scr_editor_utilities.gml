function sprite_set_size(_a0, _a1)
{
	image_xscale = (_a0 / sprite_get_width(sprite_index))
	image_yscale = (_a1 / sprite_get_width(sprite_index))
}

function snap_tile(_a0, _a1)
{
	return (floor((_a0 / _a1)) * _a1);
}

function add_object(_a0, _a1, _a2, _a3, _a4 = 0, _a5 = 0)
{
	var s = 1
	if (sprite_get_width(_a2) >= 64 or sprite_get_height(_a2) >= 64)
		s = min((64 / sprite_get_width(_a2)), (64 / sprite_get_height(_a2)))
	
	ds_list_add(object_list[_a0], {
		name: _a1,
		sprite_index: _a2,
		image_xscale: s,
		image_yscale: s,
		object_index: _a3,
		image_xoffset: _a4,
		image_yoffset: _a5,
		place_xoffset: 0,
		place_yoffset: 0,
		layerdepth: 0
	})
}

function set_object_place_offset(_a0, _a1, _a2)
{
	var b = ds_list_find_value(array_get(object_list, _a0), (ds_list_size(objectlist) - 1))
	b.place_xoffset = _a1
	b.place_yoffset = _a1
}

function set_object_layerdepth(_a0, _a1)
{
	b = ds_list_find_value(array_get(object_list, _a0), (ds_list_size(objectlist) - 1))
	b.layerdepth = _a1
}

function objectlist_calculate_scrollsize()
{
	var xx = 0
	var yy = 0
	for (var i = 0; i < ds_list_size(object_list); i++)
	{
		xx += 64
		if (xx >= sprite_width)
		{
			xx = 0
			yy += 64
		}
	}
	scroll_ymax = (yy - sprite_height)
	if (scroll_ymax < 0)
		scroll_ymax = 0
}

function create_buttons_array(_a0, _a1, _a2, _a3, _a4)
{
	var xsize = 0
	draw_set_font(global.editorfont)
	for (var i = 0; i < array_length(_a4); i++)
	{
		b = _a4[i]
		var t = string_width(b[0])
		if (t > xsize)
			xsize = (t + _a2)
	}
	for (var i = 0; i < array_length(_a4); i++)
	{
		b = _a4[i]
		with (instance_create_depth(_a0, (_a1 + (i * _a3)), depth, obj_textbutton))
		{
			buttonid = i
			sprite_index = spr_bigbutton
			sprite_set_size(xsize, _a3)
			label = b[0]
			if (b[1] != -4)
				OnSelect = method(id, b[1])
			if (b[2] != -4)
				OnDeselect = method(id, b[2])
			parent = other.id
		}
	}
}
