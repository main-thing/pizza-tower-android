///@function eval_factor()
function eval_factor() {
	var token = eval_get_current_token();
	var res;

	//REAL
	if(token_get_type(token) == TokenType.REAL){
		return eval_eat_token(TokenType.REAL);
	} //STRING
	else if(token_get_type(token) == TokenType.STRING){
		return eval_eat_token(TokenType.STRING);
	} //PARENTHESES
	else if(token_get_type(token) == TokenType.LPAREN){
		eval_eat_token(TokenType.LPAREN);
		res = eval_resolve();
		eval_eat_token(TokenType.RPAREN);
		return res;
	}
	else if(token_get_type(token) == TokenType.VARIABLE){
		var varname = eval_eat_token(TokenType.VARIABLE);
		res = eval_get_variable(id, varname);
		if(token_get_value(eval_get_current_token())=="++"){
			eval_eat_token(TokenType.SPECIAL);
			eval_set_variable(id, varname, eval_get_variable(id, varname) + 1);
		}else if(token_get_value(eval_get_current_token())=="--"){
			eval_eat_token(TokenType.SPECIAL);
			eval_set_variable(id, varname, eval_get_variable(id, varname) - 1);
		}
		return res;
	}
	else if(token_get_type(token) == TokenType.FUNCTION){
		return eval_function_resolve(eval_eat_token(TokenType.FUNCTION));
	}
	else if(token_get_type(token) == TokenType.MATH){
		eval_eat_token(TokenType.MATH);
		switch(token_get_value(token)){
			case "+":
				return eval_factor();
			case "-":
				return -1*eval_factor();
			case "!":
				return real(!eval_factor());
		}
	}
	else if(token_get_type(token) == TokenType.SPECIAL){
		var operation = eval_eat_token(TokenType.SPECIAL);
		var varname = eval_eat_token(TokenType.VARIABLE);
		switch(operation){
			case "++":
				return eval_set_variable(id, varname, eval_get_variable(id, varname) + 1);
			case "--":
				return eval_set_variable(id, varname, eval_get_variable(id, varname) - 1);
		}
	}
	eval_error("Invalid factor!");


}
