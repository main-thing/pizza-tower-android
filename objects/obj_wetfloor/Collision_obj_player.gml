ADD_OBJECT_EVENT_GML_HOOK;
with (obj_player)
{
	state = states.slipnslide
	if (movespeed < 8)
		movespeed = 8
}
