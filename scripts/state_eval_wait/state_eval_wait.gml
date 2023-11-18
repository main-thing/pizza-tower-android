///@function state_eval_run(sm, event)
///@arg sm
///@arg event
function state_eval_wait(argument0, argument1) {
	var sm = argument0;
	switch(argument1){
		case state_event.UPDATE:
			if(sm_get_time(sm) >= sm_get_argument(sm))
				sm_switch(sm, state_eval_run);
			return true;
	}
	return false;


}
