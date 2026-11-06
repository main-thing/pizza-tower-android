ADD_OBJECT_EVENT_GML_HOOK;
if (!active)
{
	global.railspeed = 0;
	with (obj_railparent)
		alarm[0] = 1;
	active = true;
	ds_list_add(global.saveroom, id);
}
