ADD_OBJECT_EVENT_GML_HOOK;
var l = global.custom_object_list
if(ds_exists(l, ds_type_list))
	ds_list_delete(l, ds_list_find_index(l, id))
if(event.destroy[0] == "")
		return;
if(event.destroy[1] != undefined)
{
	if(USE_GMLIVE)
	{
		if(live_snippet_call(event.destroy[1])) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
	}
	else
	{
		if(NSP_check_saved(event.destroy[1]))
		{
			try 
			{
				NSP_execute_saved(event.destroy[1])
			} 
			catch(err)
			{
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}