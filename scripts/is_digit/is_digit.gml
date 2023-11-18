///var is_digit(char, ?dot)
///@arg char
///@arg ?dot
function is_digit() {
	if(argument[0] == undefined) return false;

	var res = ord(argument[0]) >= ord("0") && ord(argument[0]) <= ord("9");
	if(argument_count > 1 && argument[1]) res = res || (argument[0] == ".");
	return res;


}
