ADD_OBJECT_EVENT_GML_HOOK;
ds_list_add(global.baddieroom, id)
with (instance_create(x, y, content))
{
	image_xscale = other.image_xscale
	instance_create(x, y, obj_pizzaportalfade)
}
instance_destroy()
