///@function draw_self(sm)
///@arg sm
function sm_draw_self(argument0) {
	var _sm = argument0;
	if(!sm_draw(_sm)){
		draw_self();
	}


}
