if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	var _sprite = spr_tv_idle
	if(sprite_exists(asset_get_index(sprite))){
		var _sprite = asset_get_index(sprite)
	}
	tv_push_prompt(text, prompt_type, _sprite, scroll_speed)
	has_touched_player = true
}