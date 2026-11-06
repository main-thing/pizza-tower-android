function cutscene_player_check_ground(_a0)
{
	var player = _a0
	var finish = 0
	with (player)
	{
		if grounded
			finish = 1
	}
	if finish
		cutscene_end_action()
}
