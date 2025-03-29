if(event.alarms[2][0] == "")
	return;
if(event.alarms[2][1])
	if(live_snippet_call(event.alarms[2][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}