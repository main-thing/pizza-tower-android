///@function eval_jmp(label)
function eval_jmp(argument0) {
	var arg = argument0;
	if(arg[1]) ds_stack_pop(generatedJumps);
	var checkToken = token_create(TokenType.LBL, arg[0]);
	for(var i = 0; i < ds_list_size(tokens); i++){
		if(token_equals(tokens[| i], checkToken)){
			position = i;
			break;
		}
	}
	token_destroy(checkToken);
	if(i==ds_list_size(tokens)){
		eval_error("Could not find JMP command!");
		return;
	}
	eval_eat_token(TokenType.LBL);


}
