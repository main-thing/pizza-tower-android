ADD_OBJECT_EVENT_GML_HOOK;
if (ds_list_find_index(global.baddieroom, id) != -1)
	instance_destroy()
else if (global.panic == true)
	alarm[0] = 5
