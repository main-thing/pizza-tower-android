if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	processcommand(command,true,true)
	has_touched_player = true
}