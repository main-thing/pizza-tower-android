/// @description nsp_src_token(String, Position, Token)
/// @param String
/// @param  Position
/// @param  Token
function nsp_src_token(_a0, _a1, _a2) {
	/*
	Underlying NSP script.
	*/
	var nspToken=global.nspToken;

	return string_copy(_a0, _a1, string_length(nspToken[_a2]))==nspToken[_a2];

}
