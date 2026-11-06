func = function(_a0)
{
	if (active == 0 && _a0.state == states.backbreaker)
	{
		active = 1
		obj_secretmanager.touchedtriggers += 1
	}
	exit;
}

