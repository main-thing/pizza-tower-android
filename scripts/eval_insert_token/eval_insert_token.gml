///@function eval_insert_token(token)
///@arg token
function eval_insert_token(argument0) {
	ds_list_insert(tokens, position, argument0);
	ds_list_mark_as_list(tokens, position);
	position++;


}
