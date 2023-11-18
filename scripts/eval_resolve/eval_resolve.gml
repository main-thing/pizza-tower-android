///@function eval_resolve()
function eval_resolve() {
	var val = eval_boolean(eval_factor());
	if(is_real(val)){
		return eval_addsub(val);
	}
	else if(is_string(val)){
		return eval_concatenate(val);
	}


}
