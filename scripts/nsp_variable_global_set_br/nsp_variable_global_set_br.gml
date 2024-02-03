/// @description nsp_variable_global_set_br(Variable, Value)
/// @param Variable
/// @param  Value
function nsp_variable_global_set_br(argument0, argument1) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  nsp_variable_global_set_new(argument0, argument1);

	  }
	else {

	  nsp_variable_global_set(argument0, argument1);

	  }



}
