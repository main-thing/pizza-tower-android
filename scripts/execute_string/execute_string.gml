///@function execute_string(string)
///@arg string
function execute_string(argument0) {
	/* Description
		This function accepts a string and executes it
		as though it were compiled GML code.
	v
		Example Usage:  execute_string("show_message(\"Hello World!\");");
		Result: Runs show_message and outputs Hello World!
	*/
	var _string = argument0;
	//Generate and evaluate tokens
	var tokens = interp_create(_string);
	var eval = eval_create(tokens);
	//Execute evaluation
	eval_expr(eval);
	return eval;


}
