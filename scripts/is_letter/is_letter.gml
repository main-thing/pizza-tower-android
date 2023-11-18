///@fucntion is_letter
///@arg value
function is_letter() {
	if(argument[0] == undefined) return false;
	return	(ord(argument0) >= ord("A") && ord(argument0) <= ord("Z")) ||
			(ord(argument0) >= ord("a") && ord(argument0) <= ord("z")) ||
			argument0 == "_";


}
