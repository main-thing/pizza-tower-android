if(roomend_event != ""){
	if(roomend_event_saved != undefined){
		//if(NSP_check_saved(roomend_event_saved)){
			//try {
				if(live_snippet_call(roomend_event_saved)){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
			//} catch(err){
			//	get_string_async("AN ERROR HAS OCCURRED", err)
			//}
		//}
	}
}