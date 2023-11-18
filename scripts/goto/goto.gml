///@function goto(label)
function goto(argument0) {
	var checkToken = token_create(TokenType.LABEL, argument0);
	for(var i = 0; i < ds_list_size(tokens); i++){
		if(token_equals(tokens[| i], checkToken)){
			position = i;
			break;
		}
	}
	token_destroy(checkToken);
	if(i==ds_list_size(tokens)){
		eval_error("Could not find label!");
		return;
	}
	eval_eat_token(TokenType.LABEL);


}
