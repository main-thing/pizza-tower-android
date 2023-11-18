///@function execute_string_args(string,?varname,?value,...)
///@arg string
///@arg ?varname
///@arg ?value
///@arg ...
function execute_string_args() {
	/*
		This function accepts a string and executes it
		as though it were compiled GML code.  This extended
		function allows you to pass variable values
	
		Example Usage:  execute_string_args("show_message(x);","x",5);
		Result: Runs show_message and outputs 5.
	*/
	if(argument_count mod 2 == 0){
		show_error("Incorrect number of arguments!",true);
		return;
	}

	var _string = argument[0];
	//Generate and evaluate tokens
	var tokens = interp_create(_string);
	var eval = eval_create(tokens);
	for(var i = 1; i < argument_count; i+=2){
		eval_set_variable(eval, argument[i], argument[i+1]);
	}
	//Execute evaluation
	eval_expr(eval);
	return eval;


}
