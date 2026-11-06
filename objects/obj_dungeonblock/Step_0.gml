ADD_OBJECT_EVENT_GML_HOOK;
if place_meeting(x, (y - 1), obj_canonexplosion)
{
	destroy = 1
	instance_destroy(other)
}
