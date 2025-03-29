image_xscale = abs(image_xscale)
image_yscale = abs(image_yscale)
var tilesetid = asset_get_index(tileset_name)
if(tilesetid > -1){
	tileset = tilesetid
}
shoulddraw = bbox_in_camera(view_camera[0],16)