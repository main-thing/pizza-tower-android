/// @description nsp_is_number(String)
/// @param String
function nsp_is_number(_a0) {
	/*
	Underlying NSP script.
	NOTE: Takes in account digits from 0 to 9, minus and dot signs.
	*/
	var i;

	if string_digits(_a0)=""
	 return false;

	if string_copy(_a0,1,1)="-"
	 _a0=string_delete(_a0,1,1);

	for (i=1; i<=string_length(_a0); i+=1) begin
	 if !(string_copy(_a0,i,1)="." or
	      (ord(string_copy(_a0,i,1))>=48 and
	       ord(string_copy(_a0,i,1))<=57)) 
	  return false;

	end;

	return true;




}
