ADD_OBJECT_EVENT_GML_HOOK;
if (state == states.walk && other.grounded && other.vsp > 0 && elitehit <= 1)
	instance_destroy()
else
	x--
