///@function eval_expr(eval)
///@arg eval
function eval_expr(argument0) {
	var eval = argument0;
	with(eval){
		sm_switch(sm, state_eval_run);
	}


}
