image_xscale = abs(image_xscale)
image_yscale = abs(image_yscale)
if(asset_get_index(tileset_name) > -1){
	tileset = asset_get_index(tileset_name)
}
shoulddraw = bbox_in_camera(view_camera[0],16)