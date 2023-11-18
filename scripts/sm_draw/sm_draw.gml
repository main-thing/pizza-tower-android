///@function sm_draw(sm)
///@arg sm
function sm_draw() {
	var _sm = argument[0];
	if(script_exists(_sm[? state_att.STATE]))
		return script_execute(_sm[? state_att.STATE], _sm, state_event.DRAW);
	return false;


}
