///@function sm_init([state])
///@arg [state] initial state
function sm_init() {
	enum state_event {
		ENTER,
		UPDATE,
		EXIT,
		DRAW,
		METHOD
	}

	enum state_att {
		STATE,
		PREVIOUS,
		TIME,
		STAGE,
		ARGUMENT
	}

	var _sm = ds_map_create();
	_sm[? state_att.STATE] = -1;
	_sm[? state_att.PREVIOUS] = -1;
	_sm[? state_att.TIME] = 0;
	_sm[? state_att.STAGE] = 0;
	_sm[? state_att.ARGUMENT] = 0;

	if(argument_count > 0) sm_switch(_sm, argument[0]);

	return _sm;


}
