trigger = 7
func = function(_a0)
{
	if (!active)
	{
		if (following_count(obj_chickenfollow) >= 3)
		{
			active = 1
			instance_destroy(obj_chickenfollow)
		}
	}
	exit;
}

