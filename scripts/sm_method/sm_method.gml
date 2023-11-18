///@function sm_method(sm, [argument])
///@arg sm
///@arg [argument]
function sm_method() {
	var _sm = argument[0]
	if(argument_count > 1) _sm[? state_att.ARGUMENT] = argument[1];
	return script_execute(_sm[? state_att.STATE], _sm, state_event.METHOD);


}
