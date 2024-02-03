if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	with(obj_virtual_controller){
		if (keycode == "edit") {
			processcommand(other.command,true)
		}
	}
	has_touched_player = true
}