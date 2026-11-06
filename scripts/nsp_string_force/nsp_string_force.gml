/// @description nsp_string_force(Value)
/// @param Value
function nsp_string_force(_a0) {
	/*
	Returns input as a string.
	*/

	if is_string(_a0)
	 return _a0;
 
	return string(_a0);




}
