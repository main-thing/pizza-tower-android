ADD_OBJECT_EVENT_GML_HOOK;
if (state == states.shoulderbash)
{
	var s = other.state
	scr_hurtplayer(other)
	if (s != other.state && other.state == states.hurt)
		pepperman_nearestspot()
}
