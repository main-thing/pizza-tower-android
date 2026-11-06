trigger = 6
func = function(_a0)
{
	if (!active)
	{
		if following_has_follower(obj_alienfollow)
		{
			active = 1
			instance_destroy(obj_alienfollow)
		}
	}
	exit;
}

