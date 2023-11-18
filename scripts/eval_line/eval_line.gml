///@function eval_line()
function eval_line() {
	var token;
	var next_var_local = false;
	switch(token_get_type(eval_get_current_token())){
		case TokenType.ENDL:
			break;
		case TokenType.LBRACE:
			ds_stack_push(scope, ds_stack_size(scope));
			eval_eat_token(TokenType.LBRACE);
			return;
		case TokenType.RBRACE:
			if(ds_stack_empty(scope)){
				eval_error("Unexpected }!");
				return;
			}
			ds_stack_pop(scope);
			eval_eat_token(TokenType.RBRACE);
			return;
		
		case TokenType.LPAREN:
			eval_error("Unecessary ( used as a statment!");
			return;
		
		case TokenType.RPAREN:
			eval_error("Unexpected )!");
			return;
		
		case TokenType.LABEL:
			eval_eat_token(TokenType.LABEL);
			break;
		
		case TokenType.LBL:
			eval_eat_token(TokenType.LBL);
			return;

		case TokenType.JMP:
			eval_jmp(eval_eat_token(TokenType.JMP));
			return;
		
		case TokenType.BREAK:
			if(ds_stack_empty(generatedJumps)){
				eval_error("No context to break from!");
			}
			var arg = ds_stack_pop(generatedJumps);
			eval_jmp([arg[1],true]);
			return;
		
		case TokenType.CONTINUE:
			if(ds_stack_empty(generatedJumps)){
				eval_error("No context to continue from!");
			}
			var arg = ds_stack_top(generatedJumps);
			eval_jmp([arg[0],false]);
			return;
		
		case TokenType.VAR:
			eval_eat_token(TokenType.VAR);
			next_var_local = true;
		case TokenType.VARIABLE:
			var varname = eval_eat_token(TokenType.VARIABLE);
			switch(eval_eat_token(TokenType.SPECIAL)){
				case "=":
					if(next_var_local){
						eval_set_variable(id, varname, eval_resolve(), true);
					}else
						eval_set_variable(id, varname, eval_resolve());
					break;
				case "++":
					eval_set_variable(id, varname, eval_get_variable(id,varname) + 1);
					break;
				case "--":
					eval_set_variable(id, varname, eval_get_variable(id,varname) - 1);
					break;
				case "+=":
					eval_set_variable(id, varname, eval_get_variable(id,varname) + eval_resolve());
					break;
				case "-=":
					eval_set_variable(id, varname, eval_get_variable(id,varname) - eval_resolve());
					break;
				case "*=":
					eval_set_variable(id, varname, eval_get_variable(id,varname) * eval_resolve());
					break;
				case "/=":
					eval_set_variable(id, varname, eval_get_variable(id,varname) / eval_resolve());
					break;
			}
			break;
		
		case TokenType.FUNCTION:
			var funcname = eval_eat_token(TokenType.FUNCTION);
			eval_function_resolve(funcname);
			break;
		
		case TokenType.KEYWORD:
			switch(eval_eat_token(TokenType.KEYWORD)){
				case "if":
					if(!eval_resolve()){
						eval_skip_line();
						var else_token = token_create(TokenType.KEYWORD,"else");
						if(token_equals(eval_get_current_token(),else_token)){
							eval_eat_token(TokenType.KEYWORD);
						}
						token_destroy(else_token);
					}
					return;
				case "else":
					eval_skip_line();
					return;
				case "bif":
					if(eval_resolve())
						eval_skip_line();
					return;
				case "while":
					eval_destroy_eaten_token();
					var currPos = position;
					var start = eval_create_jump_label();
					var finish = eval_create_jump_label();
					ds_stack_push(generatedJumps, [start,finish]);
					eval_insert_token(token_create(TokenType.LBL,start));
					eval_insert_token(token_create(TokenType.KEYWORD, "bif"));
					eval_skip_clause();
					eval_insert_token(token_create(TokenType.JMP, [finish, true]));
					eval_skip_line();
					eval_insert_token(token_create(TokenType.JMP, [start, false]));
					eval_insert_token(token_create(TokenType.LBL, finish));
					position = currPos;
					return;
				case "for":
					//Destroy "for" keyword
					eval_destroy_eaten_token();
				
					//Eat and destroy opening (
					eval_eat_token(TokenType.LPAREN,true);
				
					//Setup for jumps
					var currPos = position;
					var start = eval_create_jump_label();
					var finish = eval_create_jump_label();
					var body = eval_create_jump_label();
					var endline = eval_create_jump_label();
					ds_stack_push(generatedJumps, [endline,finish]);
				
					//Skip first condition
					eval_skip_line();
				
					//Insert starting jump and second conditional check
					eval_insert_token(token_create(TokenType.LBL,start));
					eval_insert_token(token_create(TokenType.KEYWORD, "bif"));
					eval_skip_line();
				
					//Eat semicolon after second condition
					eval_destroy_eaten_token();
				
					//Jump to finish when complete, else jump to the body
					eval_insert_token(token_create(TokenType.JMP,[finish,true]));
					eval_insert_token(token_create(TokenType.JMP,[body,false]));
				
					//Endline
					eval_insert_token(token_create(TokenType.LBL,endline));
					eval_skip_line(TokenType.RPAREN);
					eval_destroy_eaten_token();
					eval_insert_token(token_create(TokenType.ENDL,";"));
					eval_insert_token(token_create(TokenType.JMP,[start,false]));
				
					eval_insert_token(token_create(TokenType.LBL,body));
					eval_skip_line();
					eval_insert_token(token_create(TokenType.JMP,[endline,false]));
				
					eval_insert_token(token_create(TokenType.LBL,finish));
					position = currPos;
					return;
			}
			break;
		
		default:
			eval_error("Invalid line operation!");
			return;
	}

	eval_eat_token(TokenType.ENDL);


}
