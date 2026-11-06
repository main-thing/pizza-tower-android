function cutscene_set_sprite(_a0, _a1, _a2, _a3)
{
	var _obj = _a0
	var _spr = _a1
	var _spd = _a2
	var _xscale = _a3
	with (_obj)
	{
		sprite_index = _spr
		image_speed = _spd
		image_xscale = _xscale
		image_index = 0
		xscale = _xscale
	}
	cutscene_end_action()
	exit;
}

