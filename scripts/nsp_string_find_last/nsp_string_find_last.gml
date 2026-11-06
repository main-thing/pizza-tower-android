/// @description nsp_string_find_last(String, Substring)
/// @param String
/// @param  Substring
function nsp_string_find_last(_a0, _a1) {
	/*
	Return the position of the last match of _a1 in _a0 (0 if not found).
	*/
	var i,t,work_str;

	work_str=_a0;

	if string_pos(_a1,work_str)=0 return 0;

	for (i=1; i<=string_length(work_str); i+=1) begin
	 t=string_length(work_str)-i+1;
 
	 if string_copy(work_str,t,string_length(_a1))=_a1 {
	  break;
	  }

	end;
 
	return t;




}
