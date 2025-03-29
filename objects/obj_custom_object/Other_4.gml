if(roomstart_event != ""){
	if(roomstart_event_saved != undefined){
		//if(NSP_check_saved(roomstart_event_saved)){
			//try {
				if(live_snippet_call(roomstart_event_saved)){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
			//} catch(err){
			//	get_string_async("AN ERROR HAS OCCURRED", err)
			//}
		//}
	}
}