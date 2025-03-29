if(event.image_loaded[0] == "")
	return;
if(event.image_loaded[1] != undefined)
	if(live_snippet_call(event.image_loaded[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}