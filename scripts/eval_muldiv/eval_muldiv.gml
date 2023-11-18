///@function eval_muldiv(value)
///@arg value
function eval_muldiv(argument0) {
	var result = argument0;
	while(in(token_get_value(eval_get_current_token()),"*","/")){
		var operation = eval_eat_token(TokenType.MATH);
		switch(operation){
			case "*":
				result = result * eval_factor();
				break;
			case "/":
				result = result / eval_factor();
				break;
		}
	}
	return result;


}
