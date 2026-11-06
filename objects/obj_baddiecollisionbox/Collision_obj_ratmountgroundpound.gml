ADD_OBJECT_EVENT_GML_HOOK;
if (instance_exists(baddieID) && baddieID.destroyable)
{
	instance_destroy()
	instance_destroy(baddieID)
}
