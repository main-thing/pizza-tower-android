ADD_OBJECT_EVENT_GML_HOOK;
if(roomend_event != "") {
	if(roomend_event_saved != undefined) {
		if(USE_GMLIVE)
		{
			if(live_snippet_call(roomend_event_saved)) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
		}
		else
		{
			if(NSP_check_saved(roomend_event_saved)) {
				try 
				{
					NSP_execute_saved(roomend_event_saved)
				} 
				catch(err)
				{
					get_string_async("AN ERROR HAS OCCURRED", err)
				}
			}
		}
	}
}