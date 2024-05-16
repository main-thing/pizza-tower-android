if(drawgui_event != ""){
	if(drawgui_event_saved != undefined){
		if(NSP_check_saved(drawgui_event_saved)){
			try {
				NSP_execute_saved(drawgui_event_saved)
			} catch(err){
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}