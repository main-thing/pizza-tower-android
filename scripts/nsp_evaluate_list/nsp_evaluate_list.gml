/// @description nsp_evaluate_list(Start, End, StrList, ParList)
/// @param Start
/// @param  End
/// @param  StrList
/// @param  ParList
function nsp_evaluate_list(_a0, _a1, _a2, _a3) {
	/*
	Underlying NSP script.
	*/
	var nspListStr = _a2,
	    nspListPar = _a3,
	    nspToken=global.nspToken;
	var list_min,list_max;

	list_min=_a0;
	list_max=_a1;

	//1. If it's single, then evaluate single:
	if (list_min=list_max)
	 return nsp_evaluate_single(nspListStr[|list_min],nspListPar[|list_min]);

	//2. If it's not single, then it's an expression or a script:
	var grid,rv;
	grid=nsp_build_grid(list_min, list_max, nspListStr, nspListPar);
	rv=nsp_evaluate_long(grid, false);

	return rv;



}
