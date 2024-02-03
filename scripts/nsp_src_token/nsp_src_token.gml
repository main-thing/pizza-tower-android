/// @description nsp_src_token(String, Position, Token)
/// @param String
/// @param  Position
/// @param  Token
function nsp_src_token(argument0, argument1, argument2) {
	/*
	Underlying NSP script.
	*/
	var nspToken=global.nspToken;

	return string_copy(argument0,argument1,string_length(nspToken[argument2]))==nspToken[argument2];



}
