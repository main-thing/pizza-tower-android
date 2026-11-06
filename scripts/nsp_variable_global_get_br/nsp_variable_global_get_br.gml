/// @description nsp_variable_global_get_br(Variable)
/// @param Variable
function nsp_variable_global_get_br(_a0) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  return nsp_variable_global_get_new(_a0);

	  }
	else {

	  return nsp_variable_global_get(_a0);

	  }



}
