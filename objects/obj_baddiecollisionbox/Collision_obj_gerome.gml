ADD_OBJECT_EVENT_GML_HOOK;
if (instance_exists(baddieID) && other.thrown == true)
{
	if baddieID.destroyable
	{
		instance_destroy()
		instance_destroy(baddieID)
	}
}
