if(event.alarms[7][0] == "")
	return;
if(event.alarms[7][1] != undefined)
	if(live_snippet_call(event.alarms[7][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}