/// @description nsp_is_string(String)
/// @param String
function nsp_is_string(_a0) 
{
	/*
	Underlying NSP script.
	*/
	var nspToken=global.nspToken;
	var q = nspToken[NSP_TOK.quote];

	return (string_char_at(_a0, 1) == q && string_char_at(_a0, string_length(_a0)) == q && string_pos(q, nsp_string_crop_ext(_a0, q)) == 0);
}
