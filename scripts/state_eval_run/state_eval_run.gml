///@function state_eval_run
function state_eval_run(argument0, argument1) {
	switch(argument1){
		case state_event.ENTER:
			while(sm_get_state(argument0) == state_eval_run && token_get_type(tokens[| position]) != TokenType.EOF){
				eval_line();
			}
			if(sm_get_state(argument0) == state_eval_run && token_get_type(tokens[| position]) == TokenType.EOF){
				instance_destroy();
			}
			return true;
	}
	return false;


}
