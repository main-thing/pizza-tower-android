if(event.networking[0] == "")
	return;
if(event.networking[1] != undefined)
	if(live_snippet_call(event.networking[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}