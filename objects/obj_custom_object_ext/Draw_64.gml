ADD_OBJECT_EVENT_GML_HOOK;
if(event.draw_gui[0] == "")
	return;
if(event.draw_gui[1] != undefined)
{
	if(USE_GMLIVE)
	{
		if(live_snippet_call(event.draw_gui[1])) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
	}
	else
	{
		if(NSP_check_saved(event.draw_gui[1]))
		{
			try 
			{
				NSP_execute_saved(event.draw_gui[1])
			} 
			catch(err)
			{
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}