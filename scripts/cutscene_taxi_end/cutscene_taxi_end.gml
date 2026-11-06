function cutscene_taxi_end(_a0, _a1)
{
	var player = _a0
	var target_room = _a1
	with (player)
	{
		var handler = other
		cutscene = 1
		state = states.actor
		if (grounded && state != states.hurt)
		{
			hsp = 0
			vsp = 0
			with (instance_create((x - 1000), y, obj_taxi_cutscene))
			{
				targetplayer = player
				depth = -127
				targetDoor = "E"
				targetRoom = target_room
			}
			with (handler)
			{
				global.failcutscene = 1
				cutscene_end_action()
			}
		}
	}
	exit;
}

