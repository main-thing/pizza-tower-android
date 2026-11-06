ADD_OBJECT_EVENT_GML_HOOK;
var l = global.custom_object_list
if(ds_exists(l, ds_type_list))
	ds_list_delete(l, ds_list_find_index(l, id))
if(destroy_event != "") {
	if(USE_GMLIVE)
	{
		if(live_execute_string(destroy_event)) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
	}
	else
	{
		try
		{
			NSP_execute_string(destroy_event)
		} 
		catch(err)
		{
			get_string_async("AN ERROR HAS OCCURRED", err)
		}
	}
}