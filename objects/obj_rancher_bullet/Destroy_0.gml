ADD_OBJECT_EVENT_GML_HOOK;
if debris
{
	with (instance_create(x, y, obj_rancherbullet_debris))
	{
		image_xscale = other.image_xscale
		vsp = random_range(-3, -6)
		hsp = ((-image_xscale) * 4)
	}
}
