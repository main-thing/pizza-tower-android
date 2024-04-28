global.___nspfunctions = {}; // DO NOT EVER EDIT THIS GLOBAL IN-GAME.
for (var i = 0; i < 10000; i++) { 
    var name = script_get_name(i);
    if (string_char_at(name, 1) == "<") break;
	if (string_char_at(name, 1) == "@") continue;
    global.___nspfunctions[$name] = i
}

/// @description nsp_execute_script(Script name, Argument array)
/// @param Script name
/// @param  Argument array
function nsp_execute_script(argument0, argument1) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	var nspToken=global.nspToken;
	var rv,a;
	//See if any arguments are strings and convert if necessary:
	if(is_array(argument1)){
		 for(var i=0; i<array_length_1d(argument1); i+=1) {
			if(is_string(argument1[i])) {
				if(nsp_is_string(argument1[i])) {
					argument1[i] = string_copy(argument1[i],2,string_length(argument1[i])-2)
				}
			}
		 }
	}
	//PART 1 (Built-in scripts): ------------------------------------------------------------------------------------------
	if (is_array(argument1)){
		a=array_length_1d(argument1)
	}
	else {
		a=0
	}
	switch(string(argument0)){
		case "show_message":
			argument0 = "show_message_async"
		break
		case "get_string":
			argument0 = "get_string_async"
		break
	}
	if(global.___nspfunctions[$string(argument0)] != undefined){
		if(a == 0){
			rv = script_execute(global.___nspfunctions[$string(argument0)]);
		} else {
			rv = script_execute_ext(global.___nspfunctions[$string(argument0)],argument1);
		}
		return rv;
	}
	if asset_get_type(argument0)<>asset_script {
		NSP_notify("SCRIPT: nsp_execute_script. ERROR: Script not supported ( "+argument0+" ).");
		return nspToken[NSP_TOK.abort];
	}

	//PART 2 (Custom scripts): --------------------------------------------------------------------------------------------

	argument0=asset_get_index(argument0);

	 if (is_array(argument1)){
		a=array_length_1d(argument1)
	 }
	 else{
		 a=0
	 }

	switch(a) begin

	 case 0:
	   rv=script_execute(argument0);
	  break;
	  
	 default:
		rv=script_execute_ext(argument0,argument1);
	 break;
 
	end;

	return rv;
}