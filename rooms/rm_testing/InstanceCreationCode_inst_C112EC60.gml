func = function(_a0)
{
	if ((!active) && _a0.state == states.handstandjump)
	{
		active = 1
		obj_secretmanager.hittriggers++
		with (_a0)
			scr_pummel()
	}
	exit;
}

