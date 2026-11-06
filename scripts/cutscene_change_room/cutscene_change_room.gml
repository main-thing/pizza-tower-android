function cutscene_change_room(_a0)
{
	with (obj_player)
		targetRoom = _a0
	instance_create(x, y, obj_fadeout)
	if (room == _a0)
		cutscene_end_action()
}
