ADD_OBJECT_EVENT_GML_HOOK;
if(event.alarms[4][0] == "")
	return;
if(event.alarms[4][1] != undefined)
{
	if(USE_GMLIVE)
	{
		if(live_snippet_call(event.alarms[4][1])) {}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
	}
	else
	{
		if(NSP_check_saved(event.alarms[4][1]))
		{
			try 
			{
				NSP_execute_saved(event.alarms[4][1])
			} 
			catch(err)
			{
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}