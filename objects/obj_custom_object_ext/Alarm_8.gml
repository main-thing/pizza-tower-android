if(event.alarms[8][0] == "")
	return;
if(event.alarms[8][1] != undefined)
	if(live_snippet_call(event.alarms[8][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}