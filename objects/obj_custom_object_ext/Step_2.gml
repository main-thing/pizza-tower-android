if(event.end_step[0] == "")
	return;
if(event.end_step[1] != undefined)
	if(live_snippet_call(event.end_step[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}