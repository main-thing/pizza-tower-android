/// @description NSP_check_saved(List ID)
/// @param List ID
function NSP_check_saved(argument0) {
	/*

	Checks whether a saved (converted) string passed validation.

	Returns: 1 if the string is valid; 0 otherwise

	*/

	return (argument0[|2] != 0);



}
