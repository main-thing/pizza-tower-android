/// @description nsp_list_remove(Start, End, StrList, ParList)
/// @param Start
/// @param  End
/// @param  StrList
/// @param  ParList
function nsp_list_remove(argument0, argument1, argument2, argument3) {
	/*
	Underlying NSP script.
	*/
	var nspListStr = argument2,
	    nspListPar = argument3;
	var s,e;

	s = argument0;
	e = argument1;

	repeat (e+1-s) {
	 ds_list_delete(nspListStr, s);
	 ds_list_delete(nspListPar, s);
	 }



}
