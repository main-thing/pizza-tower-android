if(event.intersect_view[0][0] == "")
	return;
if(event.intersect_view[0][1] != undefined)
	if(live_snippet_call(event.intersect_view[0][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}