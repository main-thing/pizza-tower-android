if(draw_event != "" && draw_event != "draw_self()"){
	if(draw_event_saved != undefined){
		//if(NSP_check_saved(draw_event_saved)){
			//try {
				if(live_snippet_call(draw_event_saved)){}else{get_string_async("AN ERROR HAS OCCURRED", live_result)}
			//} catch(err){
			//	get_string_async("AN ERROR HAS OCCURRED", err)
			//}
		//}
	}
} else {
	draw_self()
}