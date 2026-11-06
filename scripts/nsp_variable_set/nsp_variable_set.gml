/// @description nsp_variable_set(Instance, Variable, Value)
/// @param Instance
/// @param  Variable
/// @param  Value
function nsp_variable_set(_a0, _a1, _a2) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	if !instance_exists(_a0) {
	 NSP_notify("SCRIPT: nsp_variable_set. ERROR: Trying to reference non-existing instance.");
	 exit;
	 }

	if is_string(_a2) {
	 if nsp_is_string(_a2)
	  _a2=string_copy(_a2,2,string_length(_a2)-2);
	 }

	switch (_a1) begin

	 case "x":
	   (_a0).x = _a2;
	  break;
 
	 case "y":
	   (_a0).y = _a2;
	  break;
  
	  // Add more here...
 
	 default:
	   NSP_notify("SCRIPT: nsp_variable_set. ERROR: Variable not supported ("+_a1+").");
	   exit;
	  break;

	end;




}
