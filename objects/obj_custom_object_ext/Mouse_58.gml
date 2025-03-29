if(event.global_mouse_middle_released[0] == "")
	return;
if(event.global_mouse_middle_released[1] != undefined)
	if(live_snippet_call(event.global_mouse_middle_released[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}