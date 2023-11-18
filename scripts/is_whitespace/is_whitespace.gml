///@function is_whitespace
///@arg value
function is_whitespace(argument0) {
	var res;
	switch(argument0){
		case " ":
		case "\t":
		case "\n":
		case "\r":
			res = true;
			break;
		default:
			res = false;
			break;
	}
	return res;


}
