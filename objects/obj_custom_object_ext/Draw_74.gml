if(event.draw_gui_begin[0] == "")
	return;
if(event.draw_gui_begin[1] != undefined)
	if(live_snippet_call(event.draw_gui_begin[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}