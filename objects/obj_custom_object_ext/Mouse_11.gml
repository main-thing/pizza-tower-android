if(event.mouse_leave[0] == "")
	return;
if(event.mouse_leave[1] != undefined)
	if(live_snippet_call(event.mouse_leave[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}