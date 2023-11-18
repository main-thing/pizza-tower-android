///@function is_letter_or_digit
///@arg value
function is_letter_or_digit() {
	if(argument[0] == undefined) return false;
	return (ord(argument[0]) >= ord("A") && ord(argument[0]) <= ord("z")) || is_digit(argument[0], false);


}
