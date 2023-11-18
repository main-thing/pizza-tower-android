///@function eval_set_variable(eval, varname, value, ?local)
///@arg eval
///@arg varname
///@arg value
///@arg local
///@returns value
function eval_set_variable() {
	var eval = argument[0];
	var _local = false;
	if(argument_count > 3) _local = argument[3];
	if(_local){
		eval.variables[? argument[1]] = argument[2];
		return argument[2];
	}
	variable_instance_set(eval.creator, argument[1], argument[2]);
	return argument[2];


}
