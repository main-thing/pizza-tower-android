with (obj_player)
{
	if ((state == states.barrelslide) && (place_meeting((x + 1), y, other) or place_meeting((x - 1), y, other)))
		instance_destroy(other)
}
