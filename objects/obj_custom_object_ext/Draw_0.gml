if(event.draw[0] == "draw_self()")
	return draw_self();
if(event.draw[0] == "")
	return;
if(event.draw[1] != undefined)
	if(live_snippet_call(event.draw[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}