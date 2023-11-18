function print_token_list() {
	var str = "";
	for(var i = 0; i < ds_list_size(tokens); i++){
		str += token_get_string(tokens[| i]) + "\n";
	}
	show_message(str);


}
