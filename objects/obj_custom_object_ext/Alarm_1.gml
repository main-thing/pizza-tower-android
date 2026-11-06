ADD_OBJECT_EVENT_GML_HOOK;
if(event.alarms[1][0] == "")
	return;
if(event.alarms[1][1] != undefined)
{
	if(USE_GMLIVE)
	{
		if(live_snippet_call(event.alarms[1][1])) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
	}
	else
	{
		if(NSP_check_saved(event.alarms[1][1]))
		{
			try 
			{
				NSP_execute_saved(event.alarms[1][1])
			} 
			catch(err)
			{
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}