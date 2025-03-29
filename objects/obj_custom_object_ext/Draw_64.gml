if(event.draw_gui[0] == "")
	return;
if(event.draw_gui[1] != undefined)
	if(live_snippet_call(event.draw_gui[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}