if(draw_event != "" && draw_event != "draw_self()"){
	if(draw_event_saved != undefined){
		if(NSP_check_saved(draw_event_saved)){
			NSP_execute_saved(draw_event_saved)
		}
	}
} else {
	draw_self()
}