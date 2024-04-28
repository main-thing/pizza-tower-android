/// @description NSP_notify(Message, [OPT] List, Start, End)
/// @param Message
/// @param  [OPT] List
/// @param  Start
/// @param  End
function NSP_notify() {
	/*

	Notifies the user about an error that has occured. You can change this script
	(read NSP Documentation for more info).

	Returns: n/a 

	*/
	global.nsp_errorcount ++
	//*** Do not change this part ***//
	if (argument_count > 1) {
 
	 argument[0] += " FAULTY CODE: " + nsp_list_to_string(argument[1], argument[2], argument[3], "^");
  
	 }
 
	// You can use argument[0] (string) from now on to report an error in any way.
	// Default implementation: show_error(argument[0], false);
	if(global.nsp_errorcount < 10){
		show_message_async(argument[0]);
	} else {
		
	}

}
