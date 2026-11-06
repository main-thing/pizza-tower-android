function cutscene_instance_create(_a0, _a1, _a2, _a3)
{
	var _obj = _a0
	var xx = _a1
	var yy = _a2
	var _xscale = _a3
	with (instance_create(xx, yy, _obj))
	{
		depth = other.depth
		image_xscale = _xscale
		xscale = _xscale
	}
	cutscene_end_action()
	exit;
}

