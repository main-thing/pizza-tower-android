///@function eval_skip_clause()
function eval_skip_clause() {
	eval_eat_token(TokenType.LPAREN);
	var pcount = 1;
	while(pcount>0 && token_get_type(eval_get_current_token())!=TokenType.EOF){
		position++;
		var t = token_get_type(eval_get_current_token());
		if(t == TokenType.LPAREN) pcount++;
		if(t == TokenType.RPAREN) pcount--;
	}
	eval_eat_token(TokenType.RPAREN);


}
