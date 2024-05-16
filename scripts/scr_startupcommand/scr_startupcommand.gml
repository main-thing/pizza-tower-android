function scr_startupcommand(){
	var file = file_text_open_read(working_directory + "crashcount.txt")
	var count = file_text_read_real(file)
	if(count > 2){
		file_text_close(file);
		var file = file_text_open_write(working_directory + "crashcount.txt")
		file_text_write_string(file,"0")
		file_text_close(file)
		return show_message_async("startupcommand crashed too many times. Aborting...");
	}
	file_text_close(file);
	
	if(!file_exists(working_directory + "startupcommand.txt")){
		var file = file_text_open_write(working_directory + "startupcommand.txt")
		file_text_write_string(file,"none")
		file_text_close(file);
	} else {
		var file = file_text_open_read(working_directory + "startupcommand.txt")
		var command = file_text_read_string(file)
		if(is_string(command) && command != "none"){
			docommand(command,true,true)
		}
		file_text_close(file);
	}
}