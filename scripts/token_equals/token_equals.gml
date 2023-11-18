///@function token_equals(token1, token2)
///@arg token1
///@arg token2
function token_equals(argument0, argument1) {
	return (token_get_type(argument0)==token_get_type(argument1)) && (token_get_value(argument0)==token_get_value(argument1));


}
