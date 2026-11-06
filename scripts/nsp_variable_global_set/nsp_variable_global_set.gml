/// @description nsp_variable_global_set(Name, Value)
/// @param Name
/// @param  Value
function nsp_variable_global_set(_a0, _a1) {
	/*
	Underlying NSP script.
	*/
	var work_str;

	work_str=_a0;

	if is_string(_a1) {
	 if nsp_is_string(_a1)
	  _a1=string_copy(_a1,2,string_length(_a1)-2);
	 }
 
	if string_copy(_a0,1,7)="global."
	 work_str=string_delete(work_str,1,7);
 
	switch (work_str) begin

	 case "room_speed":
	   room_speed = _a1;
	  break;
  
	 case "state":
	   global.state = _a1;
	  break;
  
	  // Add more here...
  
	 default:
	   NSP_notify("SCRIPT: nsp_variable_global_set. ERROR: Variable not supported ("+_a0+").");
	  break;
  
	end;





}
