ADD_OBJECT_EVENT_GML_HOOK;
if(roomstart_event != "") {
	if(roomstart_event_saved != undefined) {
		if(USE_GMLIVE)
		{
			if(live_snippet_call(roomstart_event_saved)) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
		}
		else
		{
			if(NSP_check_saved(roomstart_event_saved)) {
				try 
				{
					NSP_execute_saved(roomstart_event_saved)
				} 
				catch(err)
				{
					get_string_async("AN ERROR HAS OCCURRED", err)
				}
			}
		}
	}
}