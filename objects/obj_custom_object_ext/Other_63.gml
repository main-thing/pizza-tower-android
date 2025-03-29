if(event.dialog[0] == "")
	return;
if(event.dialog[1] != undefined)
	if(live_snippet_call(event.dialog[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}