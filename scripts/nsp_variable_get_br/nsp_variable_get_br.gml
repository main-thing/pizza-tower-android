/// @description nsp_variable_get_br(Instance, Variable)
/// @param Instance
/// @param  Variable
function nsp_variable_get_br(argument0, argument1) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new  == 1) {

	  return nsp_variable_get_new(argument0, argument1);

	  }
	else {

	  return nsp_variable_get(argument0, argument1);

	  }



}
