function cutscene_set_player_visible(_a0)
{
	with (obj_player)
		visible = _a0
	cutscene_end_action()
	exit;
}

