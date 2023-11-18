///@function interp_skip_next_line()
///@arg [delimiter]
function eval_skip_line() {
	var delimiter = TokenType.ENDL;
	var bcount = 0;
	var pcount = 0;
	if(argument_count>0){
		delimiter = argument[0];
		if(delimiter == TokenType.RPAREN) pcount = 1;
	}
	while(token_get_type(eval_get_current_token())!=TokenType.EOF){
		var type = token_get_type(eval_get_current_token());
		if(type==TokenType.JMP){
			break;
		}
		else if(type==TokenType.LBRACE) bcount++;
		else if(type==TokenType.RBRACE){
			bcount--;
			if(bcount==0 && delimiter != TokenType.RPAREN){
				break;
			}
		}
		else if(type==TokenType.LPAREN) pcount++;
		else if(type==TokenType.RPAREN) pcount--;
	
		if(type==delimiter && bcount == 0 && pcount == 0){
			break;
		}
		position++;
	}
	position++;


}
