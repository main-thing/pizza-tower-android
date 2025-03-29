if(event.intersect_view[2][0] == "")
	return;
if(event.intersect_view[2][1] != undefined)
	if(live_snippet_call(event.intersect_view[2][1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}