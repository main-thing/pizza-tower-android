if(drawgui_event != ""){
	if(drawgui_event_saved != undefined){
		//if(NSP_check_saved(drawgui_event_saved)){
			//try {
				if(live_snippet_call(drawgui_event_saved)){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
			//} catch(err){
			//	get_string_async("AN ERROR HAS OCCURRED", err)
			//}
		//}
	}
}