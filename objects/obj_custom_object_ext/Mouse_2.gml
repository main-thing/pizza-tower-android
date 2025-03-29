if(event.mouse_middle_down[0] == "")
	return;
if(event.mouse_middle_down[1] != undefined)
	if(live_snippet_call(event.mouse_middle_down[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}