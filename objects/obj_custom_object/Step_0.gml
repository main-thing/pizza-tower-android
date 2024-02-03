if(step_event != ""){
	if(step_event_saved != undefined){
		if(NSP_check_saved(step_event_saved)){
			NSP_execute_saved(step_event_saved)
		}
	}
}
if(asset_get_index(sprite) != -1 && sprite_exists(asset_get_index(sprite))){
	sprite_index = asset_get_index(sprite)
}