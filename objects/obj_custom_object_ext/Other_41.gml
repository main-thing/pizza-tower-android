if(event.outside_view[1][0] == "")
	return;
if(event.outside_view[1][1] != undefined)
	if(live_snippet_call(event.outside_view[1][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}