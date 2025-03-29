if(event.game_start[0] == "")
	return;
if(event.game_start[1] != undefined)
	if(live_snippet_call(event.game_start[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}