if(event.mouse_none[0] == "")
	return;
if(event.mouse_none[1] != undefined)
	if(live_snippet_call(event.mouse_none[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}