if(event.pre_draw[0] == "")
	return;
if(event.pre_draw[1] != undefined)
	if(live_snippet_call(event.pre_draw[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}