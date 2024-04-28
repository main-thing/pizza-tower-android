selected_option = 0
max_options = 2
prev_key_jump2 = 0
newstuff = 0
stickpressed = 0
stringoffset = 0
if(file_exists("newstuff.txt")){
	var file_buffer = buffer_load("newstuff.txt");
	textstring = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);
} else {
	textstring = "ERROR: file[newstuff.txt] DOES NOT EXIST."
}