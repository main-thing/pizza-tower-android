if(destroy_event != ""){
	try{
		NSP_execute_string(destroy_event)
	} catch(err){
		get_string_async("AN ERROR HAS OCCURRED", err)
	}
}