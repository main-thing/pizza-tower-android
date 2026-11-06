/// @description nsp_variable_get(Instance, Variable)
/// @param Instance
/// @param  Variable
function nsp_variable_get(_a0, _a1) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	var nspToken=global.nspToken;
    
	if !instance_exists(_a0) {
	 NSP_notify("SCRIPT: nsp_variable_get. ERROR: Trying to reference non-existing instance.");
	 return nspToken[NSP_TOK.abort];
	 }

	switch (_a1) begin
		case "x":
			return (_a0).x;
	  break;
 
	 case "y":
	   return (_a0).y;
	  break;
  
	  // Add more here...
 
	 default:
	   NSP_notify("SCRIPT: nsp_variable_get. ERROR: Variable not supported ("+_a1+").");
	   return nspToken[NSP_TOK.abort];
	  break;

	end;




}
