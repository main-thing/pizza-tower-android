if(event.destroy[0] == "")
	return;
if(event.destroy[1] != undefined)
	if(live_snippet_call(event.destroy[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}