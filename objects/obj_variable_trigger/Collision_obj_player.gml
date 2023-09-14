if(!has_touched_player) {
	if(!is_global) {
		if(instance_exists(object)) {
			with(object) {
				if(variable_instance_exists(self,other.variable)){
					variable_instance_set(self,other.variable,other.value)
				}
			}
		}
	} else{
		if(variable_global_exists(variable)){
			variable_global_set(variable, value)
		}
	}
	has_touched_player = true
}