ADD_OBJECT_EVENT_GML_HOOK;
var s = other.state
scr_hurtplayer(other)
if (noiseboss && s != other.state)
{
	with (obj_noiseboss)
		scr_noise_do_jump()
}
