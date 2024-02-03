/// @description nsp_list_to_string(List, Start, End, Separator);
/// @param List
/// @param  Start
/// @param  End
/// @param  Separator
function nsp_list_to_string(argument0, argument1, argument2, argument3) {
	/*
	Underlying NSP script.
	*/
	//var nspListStr=global.nspListStr;
	var i,s;

	s="";
	for (i=argument1; i<=argument2; i+=1) begin

	 s+=argument0[|i]+argument3;

	end;

	return s;



}
