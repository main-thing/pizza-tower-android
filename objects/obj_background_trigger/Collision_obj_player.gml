if(!has_touched_player){
	var lay_id = layer_get_id(layer_name)
	var lay_id2 = layer_get_id(layer_name_still)
	if(!layer_exists(lay_id))
	{
		lay_id = layer_create(0, layer_name)
		layer_background_create(lay_id, spr_null)
	}
	if(!layer_exists(lay_id2))
	{
		lay_id2 = layer_create(0, layer_name_still)
		layer_background_create(lay_id2, spr_null)
	}	
	var back_id = layer_background_get_id(lay_id)
	var back_id2 = layer_background_get_id(lay_id2)
	layer_background_visible(back_id, true)
	layer_background_visible(back_id2, false)
	layer_background_sprite(back_id, bgname)
	layer_background_blend(back_id, colour)
	layer_background_htiled(back_id, tile_bg)
	layer_background_vtiled(back_id, tile_bg)
	if(still_bg)
	{
		layer_background_visible(back_id, false)
		layer_background_visible(back_id2, true)
		layer_background_sprite(back_id2, bgname)
		layer_background_blend(back_id2, colour)
		layer_background_htiled(back_id2, tile_bg)
		layer_background_vtiled(back_id2, tile_bg)
	}
	layer_hspeed(lay_id,scrollspeed_x)
	layer_vspeed(lay_id,scrollspeed_y)
	layer_hspeed(lay_id2,scrollspeed_x)
	layer_vspeed(lay_id2,scrollspeed_y)
	has_touched_player = true
}