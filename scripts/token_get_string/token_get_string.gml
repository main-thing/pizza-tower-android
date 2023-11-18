///@function token_get_string(token)
///@arg token
function token_get_string(argument0) {
	var token = argument0;
	var type;
	switch(token_get_type(token)){
		case TokenType.REAL:
			type = "real";
			break;
		case TokenType.STRING:
			type = "string";
			break;
		case TokenType.VARIABLE:
			type = "variable";
			break;
		case TokenType.SPECIAL:
			type = "special";
			break;
		case TokenType.KEYWORD:
			type = "keyword";
			break;
		case TokenType.FUNCTION:
			type = "function";
			break;
		case TokenType.MATH:
			type = "math";
			break;
		case TokenType.LPAREN:
			type = "left parentheses";
			break;
		case TokenType.RPAREN:
			type = "right parentheses";
			break;
		case TokenType.LBRACE:
			type = "left brace";
			break;
		case TokenType.RBRACE:
			type = "right brace";
			break;
		case TokenType.ENDL:
			type = "end of line";
			break;
		case TokenType.EOF:
			type = "end of file";
			break;
		case TokenType.ARGSEP:
			type = "argument separator";
			break;
		case TokenType.LABEL:
			type = "label";
			break;
		case TokenType.LBL:
			type = "hidden label";
			break;
		case TokenType.JMP:
			type = "jump";
			break;
		default:
			type = "unknown";
				break;
	}

	return to_string("Token(",type,",",token_get_value(token),")");


}
