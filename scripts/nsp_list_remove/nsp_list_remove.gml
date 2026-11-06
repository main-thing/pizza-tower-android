/// @description nsp_list_remove(Start, End, StrList, ParList)
/// @param Start
/// @param  End
/// @param  StrList
/// @param  ParList
function nsp_list_remove(_a0, _a1, _a2, _a3) {
	/*
	Underlying NSP script.
	*/
	var nspListStr = _a2, nspListPar = _a3;
	var s = _a0;
	var e = _a1;
	repeat(e+1-s) {
	 ds_list_delete(nspListStr, s);
	 ds_list_delete(nspListPar, s);
	}
}
