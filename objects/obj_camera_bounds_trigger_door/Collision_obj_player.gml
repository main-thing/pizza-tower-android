if(single && has_touched_player){
	exit;
}
if(variable_instance_get(other,variable_internal)) {
	scr_resize_room(x + camera_x, y + camera_y, camera_width, camera_height)
	has_touched_player = true
}