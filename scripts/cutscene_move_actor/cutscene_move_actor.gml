function cutscene_move_actor(_a0, _a1, _a2, _a3)
{
	var _obj = _a0
	var xx = _a1
	var yy = _a2
	var interp = _a3
	var finish = 0
	with (_obj)
	{
		x = lerp(x, xx, interp)
		y = lerp(y, yy, interp)
		if (x > (xx - 6) && x < (xx + 6) && y > (yy - 6) && y < (yy + 6))
			finish = 1
	}
	if finish
		cutscene_end_action()
	exit;
}

