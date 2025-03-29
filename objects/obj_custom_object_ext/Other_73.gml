if(event.audio_recording[0] == "")
	return;
if(event.audio_recording[1] != undefined)
	if(live_snippet_call(event.audio_recording[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}