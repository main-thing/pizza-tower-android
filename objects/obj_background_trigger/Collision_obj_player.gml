if(!has_touched_player){
	var lay_id = layer_get_id("Background")
	var back_id = layer_background_get_id(lay_id)
	layer_background_sprite(back_id, bgname)
	layer_background_blend(back_id, c_white)
	if(tile_bg) {
		layer_background_htiled(back_id, true)
		layer_background_vtiled(back_id, true)
	} else{
		layer_background_htiled(back_id, false)
		layer_background_vtiled(back_id, false)
	}
	has_touched_player = true
}