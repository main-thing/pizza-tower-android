if(!has_touched_player) {
	with(obj_virtual_controller){
		if (keycode == "edit") {
			processcommand(other.command,true)
		}
	}
	has_touched_player = true
}