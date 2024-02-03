if(!has_touched_player) {
	var _sprite = spr_tv_idle
	if(sprite_exists(asset_get_index(sprite))){
		var _sprite = asset_get_index(sprite)
	}
	tv_push_prompt(text, prompt_type, _sprite, scroll_speed)
	has_touched_player = true
}