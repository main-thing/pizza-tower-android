ADD_OBJECT_EVENT_GML_HOOK;
if (obj_player1.character == "V")
{
	with (all)
	{
		if place_meeting(x, y, other)
			instance_destroy()
	}
}
