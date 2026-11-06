function cutscene_set_player_pos(_a0, _a1)
{
	with (obj_player)
	{
		if (object_index != obj_player2 or global.coop)
		{
			x = _a0
			y = _a1
		}
	}
	cutscene_end_action()
	exit;
}

