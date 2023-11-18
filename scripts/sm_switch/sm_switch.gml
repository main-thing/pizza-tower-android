///@sm_switch(sm, state, [argument])
///@arg sm
///@arg state
///@arg [argument]
function sm_switch() {
	var _sm = argument[0]
	if(script_exists(_sm[? state_att.STATE])){
		script_execute(_sm[? state_att.STATE], _sm, state_event.EXIT);
	}

	_sm[? state_att.PREVIOUS] = _sm[? state_att.STATE];
	_sm[? state_att.STATE] = argument[1];
	_sm[? state_att.TIME] = 0;
	_sm[? state_att.STAGE] = 0;
	if(argument_count > 2) _sm[? state_att.ARGUMENT] = argument[2];

	if(script_exists(_sm[? state_att.STATE])){
		script_execute(_sm[? state_att.STATE], _sm, state_event.ENTER);
	}


}
