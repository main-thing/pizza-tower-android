/// @description nsp_list_to_string(List, Start, End, Separator);
/// @param List
/// @param  Start
/// @param  End
/// @param  Separator
function nsp_list_to_string(_a0, _a1, _a2, _a3) {
	/*
	Underlying NSP script.
	*/
	//var nspListStr=global.nspListStr;
	var i,s;

	s="";
	for (i=_a1; i<=_a2; i+=1) begin

	 s+=_a0[|i]+_a3;

	end;

	return s;



}
