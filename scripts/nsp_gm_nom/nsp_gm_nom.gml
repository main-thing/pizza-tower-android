/// @description nsp_gm_nom(String)
/// @param String
function nsp_gm_nom(_a0) {
	/*
	Underlying NSP script.
	Checks whether the given string contains only numbers, letters and _
	*/
	var t;

	for (t=1; t<=string_length(_a0); t+=1) begin
	 char=string_copy(_a0,t,1);
	 if (ord(char)>=48 and ord(char)<=57)
	 or (ord(char)>=65 and ord(char)<=90)
	 or (ord(char)>=97 and ord(char)<=122)
	 or char="_" {}
	  else return false;
	end;

	return true;




}
