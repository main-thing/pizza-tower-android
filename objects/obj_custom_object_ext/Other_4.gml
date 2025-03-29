if(event.room_start[0] == "")
	return;
if(event.room_start[1] != undefined)
	if(live_snippet_call(event.room_start[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}