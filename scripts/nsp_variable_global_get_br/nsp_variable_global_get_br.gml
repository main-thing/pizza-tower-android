/// @description nsp_variable_global_get_br(Variable)
/// @param Variable
function nsp_variable_global_get_br(argument0) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  return nsp_variable_global_get_new(argument0);

	  }
	else {

	  return nsp_variable_global_get(argument0);

	  }



}
