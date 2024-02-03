if(drawgui_event != ""){
	if(drawgui_event_saved != undefined){
		if(NSP_check_saved(drawgui_event_saved)){
			NSP_execute_saved(drawgui_event_saved)
		}
	}
}