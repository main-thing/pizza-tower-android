///@function token_create(type, value)
///@arg type
///@arg value
function token_create(argument0, argument1) {

	enum Token {
		TYPE,
		VALUE
	}

	enum TokenType {
		REAL,
		STRING,
		VARIABLE,
		FUNCTION,
		MATH,
		BOOLEAN,
		VAR,
		LPAREN,
		RPAREN,
		LBRACE,
		RBRACE,
		SPECIAL,
		ENDL,
		EOF,
		ARGSEP,
		KEYWORD,
		BREAK,
		CONTINUE,
		LABEL,
		LBL, //Hidden label
		JMP //Hidden GOTO
	}

	var token = ds_list_create();
	token[| Token.TYPE] = argument0;
	token[| Token.VALUE] = argument1;
	return token;


}
