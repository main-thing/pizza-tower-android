if(event.step[0] == "")
	return;
if(event.step[1] != undefined)
	if(live_snippet_call(event.step[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}