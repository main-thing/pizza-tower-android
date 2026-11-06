function cutscene_wait(_a0)
{
	timer++
	if (timer >= _a0)
	{
		timer = 0
		cutscene_end_action()
	}
	exit;
}

