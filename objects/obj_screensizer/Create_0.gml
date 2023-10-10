window_set_size(960, 540)
draw_height = 540
draw_width = 960
cam_height = 540
cam_width = 960
_multi = (display_get_height() / draw_height)
if(os_type == os_windows){
	surface_resize(application_surface, draw_width, draw_height)
	camera_set_view_size(view_camera[0], cam_width, cam_height)
}
else{
    surface_resize(application_surface, draw_width * _multi, draw_height * _multi)
    camera_set_view_size(view_camera[0], cam_width, cam_height)
}