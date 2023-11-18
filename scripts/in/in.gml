///@function in(val1, val2, val3...)
///@arg val1
///@arg val2,val3...
function in() {
	for(var i = 1; i < argument_count; i++){
		if(argument[0] == argument[i]) return true;
	}
	return false;


}
