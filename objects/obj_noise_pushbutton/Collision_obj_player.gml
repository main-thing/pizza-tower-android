ADD_OBJECT_EVENT_GML_HOOK;
with(obj_player)
{
	if (state == states.handstandjump || instakillmove)
		instance_destroy(other.id)
}
