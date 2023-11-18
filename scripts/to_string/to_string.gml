///@function to_string(...)
///@arg ...
function to_string() {
	var res = "";
	for(var i = 0; i < argument_count; i++){
		res += string(argument[i]);
	}
	return res;


}
