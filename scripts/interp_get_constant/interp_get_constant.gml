///@function interp_get_constant(constant)
///@arg constant
function interp_get_constant(argument0) {
	switch(argument0){
		case "true":
			return 1;
		case "false":
			return 0;
		case "undefined":
			return undefined;
		case "self":
			return -1;
		case "other":
			return -2;
		default:
			return -1;
	}


}
