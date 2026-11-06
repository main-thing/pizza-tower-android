function cutscene_check_collision(_a0, _a1)
{
	var obj1 = _a0
	var obj2 = _a1
	var finish = 0
	with (obj1)
	{
		if place_meeting(x, y, obj2)
			finish = 1
	}
	if finish
		cutscene_end_action()
	exit;
}
