function Approach(a, b, amount)
{
	if a < b
	{
		a += amount;
		if a > b
			return b;
	}
	else
	{
		a -= amount;
		if a < b
			return b;
	}
	return a;
}

function camera_zoom(zoom_target, zoom_speed)
{
	with obj_camera
	{
		targetzoom = zoom_target
		targetzoom = clamp(targetzoom, 0, max_zoom)
		
		if zoom_speed != undefined
			zoomspd = abs(zoom_speed)
	}
}

function camera_set_zoom(_a0)
{
	with obj_camera
		zoom = _a0
}

function try_solid(xplus, yplus, object, tries)
{
	var old_x = x
	var old_y = y
	var n = -1
	
	for(var i = 0; i < tries; i++)
	{
		x += xplus
		y += yplus
		
		if !scr_solid(x, y)
		{
			n = i + 1
			break
		}
	}
	
	x = old_x
	y = old_y
	return n;
}

function ledge_bump(_a0)
{
	var old_x = x
	var old_y = y
	
	x += xscale * 4
	var ty = try_solid(0, -1, obj_solid, _a0)
	x = old_x
	
	if ty != -1
	{
		y -= ty
		x += xscale
		if scr_solid(x, y)
		{
			x = old_x
			y = old_y
			return true;
		}
		return false;
	}
	return true;
}

function instance_create_unique(_a0, _a1, _a2)
{
	if instance_exists(_a2)
		return noone;
	var b = instance_create(_a0, _a1, _a2)
	return b;
}

function get_solid_difference(_a0, _a1, _a2)
{
	var old_x = x
	var old_y = y
	
	var n = 0
	for (i = 0; i < _a2; i++)
	{
		x += _a0
		y += _a1
		if !scr_solid(x, y)
			n++
	}
	
	x = old_x
	y = old_y
	return n;
}

function trace()
{
	var _string = ""
	for (var i = 0; i < argument_count; i++)
		_string += string(argument[i])
	show_debug_message(_string)
	exit;
}

function concat()
{
	var _string = ""
	for (var i = 0; i < argument_count; i++)
		_string += string(argument[i])
	return _string;
}

function ds_list_add_unique(_a0)
{
	if argument_count > 1
	{
		for (var i = 1; i < argument_count; i++)
		{
			var b = argument[i]
			if ds_list_find_index(_a0, b) == -1
				ds_list_add(_a0, b)
		}
	}
}

function point_in_camera(_a0, _a1, _a2)
{
	var cam_x = camera_get_view_x(_a2)
	var cam_y = camera_get_view_y(_a2)
	var cam_w = camera_get_view_width(_a2)
	var cam_h = camera_get_view_height(_a2)
	return point_in_rectangle(_a0, _a1, cam_x, cam_y, (cam_x + cam_w), (cam_y + cam_h));
}

function point_in_camera_ext(_a0, _a1, _a2, _a3, _a4)
{
	var cam_x = camera_get_view_x(_a2)
	var cam_y = camera_get_view_y(_a2)
	var cam_w = camera_get_view_width(_a2)
	var cam_h = camera_get_view_height(_a2)
	return point_in_rectangle(_a0, _a1, (cam_x - _a3), (cam_y - _a4), ((cam_x + cam_w) + _a3), ((cam_y + cam_h) + _a4));
}
// camera, padding
function bbox_in_camera(_a0, _a1)
{
	if is_undefined(_a1)
		_a1 = 0
	var cam_x = camera_get_view_x(_a0)
	var cam_y = camera_get_view_y(_a0)
	var cam_w = camera_get_view_width(_a0)
	var cam_h = camera_get_view_height(_a0)
	return bbox_left < cam_x + cam_w + _a1 && bbox_right > cam_x - _a1 && bbox_top < cam_y + cam_h + _a1 && bbox_bottom > cam_y - _a1;
}

function instance_nearest_random(_a0, _a1)
{
	var l = instance_furthest(x, y, _a0)
	var list = ds_list_create()
	for (i = 0; i < instance_number(_a0); i++)
	{
		var b = instance_find(_a0, i)
		var t = distance_to_object(b)
		if t <= l
			ds_list_add(list, b)
	}
	
	var b = undefined
	if ds_list_size(list) > 0
	{
		var n = irandom(_a1)
		if ds_list_size(list) < n
			n = ds_list_size(list) - 1
		b = ds_list_find_value(list, ds_list_size(list) - n)
	}
	ds_list_destroy(list)
	return b;
}

function instance_random(object) {
	return instance_find(object, irandom(instance_number(object) - 1));
}

function heat_calculate(num)
{
	trace(global.stylemultiplier)
	return num + round(num * global.stylemultiplier);
}