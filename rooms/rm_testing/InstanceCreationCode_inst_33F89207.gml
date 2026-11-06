trigger = 1
func = function(_a0)
{
	if (!active)
	{
		if (_a0.state == states.freefallland)
			active = 1
	}
	exit;
}

