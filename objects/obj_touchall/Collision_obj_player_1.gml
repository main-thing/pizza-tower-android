ADD_OBJECT_EVENT_GML_HOOK;
if (!touched)
{
	touched = true;
	secret_add_touchall(room, trigger, id);
	ds_list_add(global.saveroom, id);
}
