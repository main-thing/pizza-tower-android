if(event.global_mouse_right_pressed[0] == "")
	return;
if(event.global_mouse_right_pressed[1] != undefined)
	if(live_snippet_call(event.global_mouse_right_pressed[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}