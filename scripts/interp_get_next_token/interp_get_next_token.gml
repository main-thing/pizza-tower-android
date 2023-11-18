///@function interp_get_next_token(interp)
///@arg interp
function interp_get_next_token(argument0) {
	var interp = argument0;
	interp_discard_whitespace(interp);
	var c = interp_get_current_char(interp);
	var token;
	if(c == undefined){
		token = token_create(TokenType.EOF,c);
	}
	else if(is_digit(c)){
			var res = "";
			while(is_digit(interp_get_current_char(interp), true)){
				res += interp_get_current_char(interp);
				interp_advance(interp);
			}
			token = token_create(TokenType.REAL, real(res));
	}
	else if(is_letter(c)){
			var res = "";
			while(is_letter_or_digit(interp_get_current_char(interp))){
				res += interp_get_current_char(interp);
				interp_advance(interp);
			}
			switch(res){
				case "if":
				case "else":
				case "while":
				case "for":
					token = token_create(TokenType.KEYWORD, res);
					break;
				
				case "label":
					interp_discard_whitespace(interp);
					var res = "";
					while(is_letter_or_digit(interp_get_current_char(interp))){
						res += interp_get_current_char(interp);
						interp_advance(interp);
					}
					token = token_create(TokenType.LABEL, res);
					break;
				
				case "break":
					token = token_create(TokenType.BREAK, res);
					break;
				case "continue":
					token = token_create(TokenType.CONTINUE, res);
					break;
				case "var":
					token = token_create(TokenType.VAR, res);
					break;
				default:
					interp_discard_whitespace(interp);
					if(interp_get_current_char(interp) == "(")
						token = token_create(TokenType.FUNCTION, res);
					else{
						var ai = asset_get_index(res);
						if(ai != -1){
							token = token_create(TokenType.REAL, ai);
						}
						else{
							ai = interp_get_constant(res);
							if(ai != -1){
								token = token_create(TokenType.REAL, ai);
							}
							else{
									token = token_create(TokenType.VARIABLE, res);
							}
						}
					}
			}
	}
	else if(c == "\""){
			interp_advance(interp);
			var res = "";
			while(interp_get_current_char(interp) != "\""){
				if(interp_get_current_char(interp) == "\\"){
					interp_advance(interp);
				}
				res += interp_get_current_char(interp);
				interp_advance(interp);
			}
			token = token_create(TokenType.STRING, res);
			interp_advance(interp);
	}
	else{
		switch(c){
			case "+":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "+"){
					token = token_create(TokenType.SPECIAL,"++");
					interp_advance(interp);
				
				}
				else if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.SPECIAL,"+=");
					interp_advance(interp);
				
				}
				else {
					token = token_create(TokenType.MATH,c);
				}
				break;
			case "-":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "-"){
					token = token_create(TokenType.SPECIAL,"--");
					interp_advance(interp);
				
				}
				else if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.SPECIAL,"-=");
					interp_advance(interp);
				
				}
				else {
					token = token_create(TokenType.MATH,c);
				}
				break;
			case "*":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.SPECIAL,"*=");
					interp_advance(interp);
				
				}
				else {
					token = token_create(TokenType.MATH,c);
				}
				break;
			case "/":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.SPECIAL,"/=");
					interp_advance(interp);
				
				}
				else {
					token = token_create(TokenType.MATH,c);
				}
				break;
			case "!":
				token = token_create(TokenType.MATH,c);
				interp_advance(interp);
				break;
			case "=":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.BOOLEAN,"==");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.SPECIAL,c);
				}
				break;
			case "(":
				token = token_create(TokenType.LPAREN,c);
				interp_advance(interp);
				break;
			case ")":
				token = token_create(TokenType.RPAREN,c);
				interp_advance(interp);
				break;
			case "{":
				token = token_create(TokenType.LBRACE,c);
				interp_advance(interp);
				break;
			case "}":
				token = token_create(TokenType.RBRACE,c);
				interp_advance(interp);
				break;
			case ";":
				token = token_create(TokenType.ENDL,c);
				interp_advance(interp);
				break;
			case ",":
				token = token_create(TokenType.ARGSEP,c);
				interp_advance(interp);
				break;
			case ">":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.BOOLEAN,">=");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.BOOLEAN,c);
				}
				break;
			case "<":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "="){
					token = token_create(TokenType.BOOLEAN,"<=");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.BOOLEAN,c);
				}
				break;
			case "&":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "&"){
					token = token_create(TokenType.BOOLEAN,"&&");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.BOOLEAN,c);
				}
				break;
			case "|":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "|"){
					token = token_create(TokenType.BOOLEAN,"||");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.BOOLEAN,c);
				}
				break;
			case "^":
				interp_advance(interp);
				if(interp_get_current_char(interp) == "^"){
					token = token_create(TokenType.BOOLEAN,"^^");
					interp_advance(interp);
				
				}
				else{
					token = token_create(TokenType.BOOLEAN,c);
				}
				break;
			default:
				return;
		}
	}
	interp[| Interp.CURRENT_TOKEN] = token;
	return token;


}
