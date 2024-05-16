function scr_checkcrashcount(){
	if(!file_exists(working_directory + "crashcount.txt")){
		var file = file_text_open_write(working_directory + "crashcount.txt")
		file_text_write_real(file,0)
		file_text_close(file);
	} else {
		var file = file_text_open_read(working_directory + "crashcount.txt")
		var count = file_text_read_real(file) //mistyped so it always gave a random number
		file_text_close(file)
		
		var file = file_text_open_write(working_directory + "crashcount.txt")
		file_text_write_real(file, count + 1)
		file_text_close(file);
	}
}