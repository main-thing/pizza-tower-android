ADD_OBJECT_EVENT_GML_HOOK;
with (other)
{
	if (state != states.grabbed && vsp > -5)
	{
		ventilator_vsp = -5;
		vsp = ventilator_vsp;
	}
}
