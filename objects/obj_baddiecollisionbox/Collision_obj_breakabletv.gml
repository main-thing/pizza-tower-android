ADD_OBJECT_EVENT_GML_HOOK;
if (instance_exists(baddieID) && other.thrown == true && (!baddieID.instantkillable))
{
	instance_destroy(other)
	instance_destroy()
	instance_destroy(baddieID)
}
