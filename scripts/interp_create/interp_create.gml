///@function interp_create(string)
///@arg string
function interp_create(argument0) {

	enum Interp {
		POSITION,
		TEXT,
		CURRENT_CHAR,
		CURRENT_TOKEN,
		TOKENS
	}
	var interp = ds_list_create();
	var tokens = ds_list_create();
	interp[| Interp.POSITION] = 0;
	interp[| Interp.TEXT] = argument0;
	interp[| Interp.CURRENT_CHAR] = "";
	interp[| Interp.CURRENT_TOKEN] = -1;

	interp_advance(interp);
	do{
		ds_list_add(tokens, interp_get_next_token(interp));
		ds_list_mark_as_list(tokens, ds_list_size(tokens)-1);
	}until(token_get_type(interp_get_current_token(interp)) == TokenType.EOF);

	ds_list_destroy(interp);
	return tokens;


}
