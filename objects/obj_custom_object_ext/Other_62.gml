if(event.http[0] == "")
	return;
if(event.http[1] != undefined)
	if(live_snippet_call(event.http[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}