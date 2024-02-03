if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	if(!is_global) {
		if(instance_exists(object)) {
			with(object) {
				if(!other.force){
					if(variable_instance_exists(self,other.variable)){
						variable_instance_set(self,other.variable,other.value)
					}
				} else {
					variable_instance_set(self,other.variable,other.value)
				}
			}
		}
	} else{
		if(!force){
			if(variable_global_exists(variable)){
			variable_global_set(variable, value)
			}
		} else {
			variable_global_set(variable, value)
		}
	}
	has_touched_player = true
}