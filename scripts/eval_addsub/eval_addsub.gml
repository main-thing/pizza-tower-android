///@function eval_addsub(value)
///@arg value
function eval_addsub(argument0) {
	var result = argument0;
	result = eval_muldiv(result);
	while(in(token_get_value(eval_get_current_token()),"+","-")){
		var operation = eval_eat_token(TokenType.MATH);
		switch(operation){
			case "+":
				result = result + eval_muldiv(eval_factor());
				break;
			case "-":
				result = result - eval_muldiv(eval_factor());
				break;
		}
	}
	return result;


}
