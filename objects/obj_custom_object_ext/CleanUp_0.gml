if(event.clean_up[0] == "")
	return;
if(event.clean_up[1] != undefined)
	if(live_snippet_call(event.clean_up[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}