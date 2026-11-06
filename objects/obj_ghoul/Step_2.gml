ADD_OBJECT_EVENT_GML_HOOK;
event_inherited()
if (state == states.stun)
{
	if (!(scr_solid(x, y)))
		scr_collide()
	else
	{
		x += hsp
		y += vsp
	}
}
