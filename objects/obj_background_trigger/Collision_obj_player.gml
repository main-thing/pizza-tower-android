if(!has_touched_player){
	var lay_id = layer_get_id("Backgrounds_1")
	var lay_id2 = layer_get_id("Backgrounds_still1")
	var back_id = layer_background_get_id(lay_id)
	var back_id2 = layer_background_get_id(lay_id2)
	layer_background_sprite(back_id, bgname)
	layer_background_blend(back_id, colour)
	if(still_bg){
			layer_background_sprite(back_id2, bgname)
			layer_background_blend(back_id2, colour)
	}
	if(tile_bg) {
		layer_background_htiled(back_id, true)
		layer_background_vtiled(back_id, true)
		if(still_bg){
			layer_background_htiled(back_id2, true)
			layer_background_vtiled(back_id2, true)
		}
	} else{
		layer_background_htiled(back_id, false)
		layer_background_vtiled(back_id, false)
		if(still_bg){
			layer_background_htiled(back_id2, false)
			layer_background_vtiled(back_id2, false)
		}
	}
	if(still_bg){
		layer_background_visible(back_id, false)
		layer_background_visible(back_id2, true)
		layer_hspeed(lay_id2,scrollspeed_x)
		layer_vspeed(lay_id2,scrollspeed_y)
	} else {
		layer_background_visible(back_id, true)
		layer_background_visible(back_id2, false)
		layer_hspeed(lay_id,scrollspeed_x)
		layer_vspeed(lay_id,scrollspeed_y)
	}
	has_touched_player = true
}