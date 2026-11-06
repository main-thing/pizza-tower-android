/// @description nsp_variable_global_set_br(Variable, Value)
/// @param Variable
/// @param  Value
function nsp_variable_global_set_br(_a0, _a1) {
	/*
	Underlying NSP script.
	*/

	if (global.NSP_VAR_SYS_new == 1) {

	  nsp_variable_global_set_new(_a0, _a1);

	  }
	else {

	  nsp_variable_global_set(_a0, _a1);

	  }



}
