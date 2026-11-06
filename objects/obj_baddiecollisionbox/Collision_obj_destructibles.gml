ADD_OBJECT_EVENT_GML_HOOK;
if (instance_exists(baddieID) && baddieID.thrown == true && (!baddieID.instantkillable))
	instance_destroy(other)
