///@function eval_get_variable(eval, varname)
///@arg eval
///@arg varname
///@returns value
function eval_get_variable(argument0, argument1) {
	var eval = argument0;
	if(ds_map_exists(eval.variables, argument1)) return eval.variables[? argument1];
	return variable_instance_get(eval.creator, argument1);


}
