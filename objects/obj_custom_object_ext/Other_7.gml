if(event.animation_end[0] == "")
	return;
if(event.animation_end[1] != undefined)
	if(live_snippet_call(event.animation_end[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}