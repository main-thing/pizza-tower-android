ADD_OBJECT_EVENT_GML_HOOK;
depth = VKEY_DEPTH - 1;
if(instance_number(object_index) > 1) 
	instance_destroy(id, false);

showcollisions = false;
//file_delete(BUTTON_SAVE_LOCATION);