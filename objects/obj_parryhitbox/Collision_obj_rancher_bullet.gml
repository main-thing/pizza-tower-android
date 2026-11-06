ADD_OBJECT_EVENT_GML_HOOK;
with (other)
{
	var _dir = sign(image_xscale)
	if (x != other.x)
		_dir = sign((x - other.x))
	image_xscale = _dir
}
if (!collisioned)
	event_user(0)
