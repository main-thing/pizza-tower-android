///@function eval_boolean(value)
///@arg value
function eval_boolean(argument0) {
	var result = argument0;
	var boolean = false;
	while(token_get_type(eval_get_current_token())==TokenType.BOOLEAN){
		boolean = true;
		var operation = eval_eat_token(TokenType.BOOLEAN);
		switch(operation){
			case "==":
				result = (result == eval_resolve());
				break;
			case "<":
				result = result < eval_resolve();
				break;
			case ">":
				result = result > eval_resolve();
				break;
			case "<=":
				result = result <= eval_resolve();
				break;
			case ">=":
				result = result >= eval_resolve();
				break;
			case "&&":
				result = eval_resolve() && result;
				break;
			case "&":
				result = eval_resolve() & result;
				break;
			case "||":
				result = eval_resolve() || result;
				break;
			case "|":
				result = eval_resolve() | result;
				break;
			case "^^":
				result = eval_resolve() ^^ result;
				break;
			case "^":
				result = eval_resolve() ^ result;
				break;
		}
	}
	if(boolean) result = real(result);
	return result;


}
