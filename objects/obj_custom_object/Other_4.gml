if(roomstart_event != ""){
	try {
		NSP_execute_string(roomstart_event)
	} catch(err){
		get_string_async("AN ERROR HAS OCCURRED", err)
	}
}