if(event.audio_playback[0] == "")
	return;
if(event.audio_playback[1] != undefined)
	if(live_snippet_call(event.audio_playback[1])){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}