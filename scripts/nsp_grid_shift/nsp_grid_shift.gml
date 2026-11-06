/// @description nsp_grid_shift(Grid, Start, End)
/// @param Grid
/// @param  Start
/// @param  End
function nsp_grid_shift(_a0, _a1, _a2) {
	/*
	Underlying NSP script.
	NOTE: There will be some excess data at the end of the grid!
	*/

	ds_grid_set_grid_region(_a0,_a0,_a2+1,0,ds_grid_width(_a0)-1,1,_a1,0);



}
