var ix = (camera_get_view_width(view_camera[0]) / obj_camera.original_cam_width)
var iy = (camera_get_view_height(view_camera[0]) / obj_camera.original_cam_height)
for (var i = 0; i < array_length(backgrounds); i++)
{
	var n = backgrounds[i]
	var lay_id = layer_background_get_id(layer_get_id(n))
	layer_background_xscale(lay_id, ix)
	layer_background_yscale(lay_id, iy)
}
