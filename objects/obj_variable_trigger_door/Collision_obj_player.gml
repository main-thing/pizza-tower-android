if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	if(is_global)
	{
		if(variable_global_exists(variable) || force)
		{
			variable_global_set(variable, value)
		}
	} 
	else
	{
		with(object)
		{
			if(variable_instance_exists(self,other.variable) || other.force)
			{
				variable_instance_set(self, other.variable, other.value)
			}
		}
	}
	has_touched_player = true
}