if(roomend_event != ""){
	try {
		NSP_execute_string(roomend_event)
	} catch(err){
		get_string_async("AN ERROR HAS OCCURRED", err)
	}
}