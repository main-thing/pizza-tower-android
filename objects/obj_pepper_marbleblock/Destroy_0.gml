ADD_OBJECT_EVENT_GML_HOOK;
instance_destroy(blockID)
with (spotID)
{
	with (instance_create(x, y, obj_pepper_marblestatue))
		other.blockID = id
}
