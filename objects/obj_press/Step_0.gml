ADD_OBJECT_EVENT_GML_HOOK;
if instance_exists(ID)
{
	if (ID.press >= 8)
		instance_destroy()
}
else
	instance_destroy()
