if(event.alarms[3][0] == "")
	return;
if(event.alarms[3][1])
	if(live_snippet_call(event.alarms[3][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}