if(event.save_load[0] == "")
	return;
if(event.save_load[1] != undefined)
	if(live_snippet_call(event.save_load[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}