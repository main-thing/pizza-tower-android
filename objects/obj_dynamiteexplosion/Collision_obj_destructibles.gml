var _self = id
var _x = x
var _y = x
with (other)
{
	if (object_index != obj_onewaybigblock)
		instance_destroy()
	else
	{
		var _col = collision_line((x + (35 * image_xscale)), (y + (16 * image_yscale)), _x, _y, obj_solid, false, true)
		if (_col == -4)
			instance_destroy()
	}
}
