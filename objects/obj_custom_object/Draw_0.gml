if(draw_event != "" && draw_event != "draw_self()"){
	if(draw_event_saved != undefined){
		if(NSP_check_saved(draw_event_saved)){
			try {
			NSP_execute_saved(draw_event_saved)
			} catch(err){
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
} else {
	draw_self()
}