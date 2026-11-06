ADD_OBJECT_EVENT_GML_HOOK;
view_enabled = true
view_visible[0] = true
if(os_type == os_windows) {
	surface_resize(application_surface, draw_width, draw_height)
	camera_set_view_size(view_camera[0], cam_width, cam_height)
}
else{
	surface_resize(application_surface, draw_width * _multi, draw_height * _multi)
	camera_set_view_size(view_camera[0], cam_width, cam_height)
}
