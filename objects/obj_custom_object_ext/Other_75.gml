if(event.system[0] == "")
	return;
if(event.system[1] != undefined)
	if(live_snippet_call(event.system[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}