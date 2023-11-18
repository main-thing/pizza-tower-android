///@function eval_error
///@arg type
function eval_error(argument0) {
	sm_switch(sm, state_eval_error);
	show_error(argument0 + " at token position: " + string(position), true);


}
