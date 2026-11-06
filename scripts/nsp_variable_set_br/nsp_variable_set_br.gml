/// @description nsp_variable_set_br(Instance, Variable, Value)
/// @param Instance
/// @param  Variable
/// @param  Value
function nsp_variable_set_br(_a0, _a1, _a2) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  nsp_variable_set_new(_a0, _a1, _a2);

	  }
	else {

	  nsp_variable_set(_a0, _a1, _a2);

	  }





}
