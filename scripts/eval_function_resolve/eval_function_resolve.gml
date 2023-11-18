///@function eval_function_resolve(function)
///@arg function
function eval_function_resolve() {
	var _function = argument0;
	var returnval = 0;

	eval_eat_token(TokenType.LPAREN);

	var args = ds_list_create();
	while(token_get_type(eval_get_current_token())!=TokenType.RPAREN){
	    ds_list_add(args, eval_resolve());
	    if(token_get_type(eval_get_current_token())!=TokenType.RPAREN){
	        eval_eat_token(TokenType.ARGSEP);
	    }
	}
	//	if(token_get_type(eval_get_current_token())==TokenType.ARGSEP){
	//		eval_eat_token(TokenType.ARGSEP);
	//	}
	//	ds_list_add(args, eval_resolve());
	//} until(token_get_type(eval_get_current_token())!=TokenType.ARGSEP);

	eval_eat_token(TokenType.RPAREN);

	var funcIndex = asset_get_index(_function);
	if(funcIndex == -1) with(creator) returnval = function_execute_array(_function, ds_list_to_array(args));
	else{
		if(eval_is_hidden_function(funcIndex)) returnval = script_execute_args(funcIndex, args);
		else with(creator) returnval = script_execute_args(funcIndex, args);
	}

	ds_list_destroy(args);
	return returnval;


}
