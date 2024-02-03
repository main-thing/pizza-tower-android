/// @description nsp_string_force(Value)
/// @param Value
function nsp_string_force(argument0) {
	/*
	Returns input as a string.
	*/

	if is_string(argument0)
	 return argument0;
 
	return string(argument0);




}
