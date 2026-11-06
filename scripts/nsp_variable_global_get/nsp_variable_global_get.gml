/// @description nsp_variable_global_get(Name)
/// @param Name
function nsp_variable_global_get(_a0) {
	/*
	Underlying NSP script..
	*/
	var nspToken=global.nspToken;
	var work_str;

	work_str=_a0;

	if string_copy(_a0,1,7)="global."
	 work_str=string_delete(work_str,1,7);
 
	switch (work_str) begin

	 case "room_speed":
	   return room_speed;
	  break;
  
	  // Add more here...
  
	 default:
	   NSP_notify("SCRIPT: nsp_variable_global_get. ERROR: Variable not supported ("+_a0+").");
	   return nspToken[NSP_TOK.abort];
	  break;
  
	end;




}
