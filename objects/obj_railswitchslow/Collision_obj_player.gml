ADD_OBJECT_EVENT_GML_HOOK;
if (!active)
{
	global.railspeed--
	global.railspeed = clamp(global.railspeed, 0, global.maxrailspeed)
	with (obj_railparent)
		alarm[0] = 1
	active = 1
	ds_list_add(global.saveroom, id)
}
