/// @description nsp_variable_get_br(Instance, Variable)
/// @param Instance
/// @param  Variable
function nsp_variable_get_br(_a0, _a1) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new  == 1) {

	  return nsp_variable_get_new(_a0, _a1);

	  }
	else {

	  return nsp_variable_get(_a0, _a1);

	  }



}
