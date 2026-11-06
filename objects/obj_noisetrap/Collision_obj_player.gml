ADD_OBJECT_EVENT_GML_HOOK;
if (collision && other.brick && other.isgustavo)
{
	instance_destroy()
	other.brick = 0
	with (instance_create(x, y, obj_brickcomeback))
		trapped = 1
}
