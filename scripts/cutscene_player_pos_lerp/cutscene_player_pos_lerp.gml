function cutscene_player_pos_lerp(_a0, _a1, _a2)
{
	var _finish = 0
	with (obj_player)
	{
		hsp = 0
		vsp = 0
		if (object_index != obj_player2 or global.coop)
		{
			x = lerp(x, _a0, _a2)
			y = lerp(y, _a1, _a2)
			if (x > (_a0 - 4) && x < (x + 4) && y > (_a1 - 4) && y < (_a1 + 4))
				_finish = 1
		}
	}
	if _finish
		cutscene_end_action()
	exit;
}

