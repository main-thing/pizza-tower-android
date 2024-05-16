if(step_event != ""){
	if(step_event_saved != undefined){
		if(NSP_check_saved(step_event_saved)){
			try {
				NSP_execute_saved(step_event_saved)
			} catch(err){
				get_string_async("AN ERROR HAS OCCURRED", err)
			}
		}
	}
}
if(!spriteids){
	if(asset_get_index(sprite) != -1 && sprite_exists(asset_get_index(sprite))){
		sprite_index = asset_get_index(sprite)
	}
} else {
	sprite_index = sprite
}