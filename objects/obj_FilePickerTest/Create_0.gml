scan = function () {
	var a = []

	var f = file_text_open_write("hey.txt")
	file_text_write_string(f, "das me >:D")
	file_text_close(f)

	var f = file_find_first(working_directory + "*", 0)

	while f != "" {
		array_push(a, f)
		f = file_find_next()
	}

	show_message_async(string(a))

	file_find_close()
}

alarm[0] = 10

kitkatdialog = -1

copying = 0