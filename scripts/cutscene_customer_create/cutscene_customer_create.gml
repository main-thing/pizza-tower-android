function cutscene_customer_create(_a0, _a1, _a2, _a3, _a4)
{
	var xx = _a0
	var yy = _a1
	var _idle = _a2
	var _happy = _a3
	var _xscale = _a4
	with (instance_create(xx, yy, obj_customeractor))
	{
		image_xscale = _xscale
		depth = (other.depth - 1)
		sprite_index = _idle
		spr_idle = _idle
		spr_happy = _happy
	}
	cutscene_end_action()
	exit;
}

