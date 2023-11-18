///@function token_eat(type, ?discard)
///@arg type
///@arg ?discard
function eval_eat_token(_type, _discard = false) {
	var token = eval_get_current_token();
	if(token_get_type(token) == _type){
		if(_discard){
			ds_list_delete(tokens,position);
		}
		else{
			position++;
		}
		return token_get_value(token);
	}
	show_message_async("Semicolon missing at end of code.")
	show_debug_message("Invalid token!");
}
