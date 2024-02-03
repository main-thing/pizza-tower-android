/// @description nsp_variable_set_br(Instance, Variable, Value)
/// @param Instance
/// @param  Variable
/// @param  Value
function nsp_variable_set_br(argument0, argument1, argument2) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  nsp_variable_set_new(argument0, argument1, argument2);

	  }
	else {

	  nsp_variable_set(argument0, argument1, argument2);

	  }





}
