/// @description nsp_arithmetic_calculate(Value 1, Value 2, Token)
/// @param Value 1
/// @param  Value 2
/// @param  Token
function nsp_arithmetic_calculate(_a0, _a1, _a2) {
	/*
	Underlying NSP script.
	NOTE: Add error checking for incompatible data types.
	*/
	var nspToken=global.nspToken;

	//Add:
	if _a2=nspToken[NSP_TOK.add] {

	 //DEBUG:
	 //show_message("Arg0: "+nsp_string_force(_a0)+", isString: "+string(is_string(_a0)));
	 //show_message("Arg1: "+nsp_string_force(_a1)+", isString: "+string(is_string(_a1)));

	 if is_string(_a0) {
	  if nsp_is_number(_a0)
	   _a0=real(_a0)
	   else _a0=string_delete(_a0,string_length(_a0),1);
	  }
 
	 if is_string(_a1) {
	  if nsp_is_number(_a1)
	   _a1=real(_a1)
	   else _a1=string_delete(_a1,1,1);
	  }
   
	 //DEBUG: 
	 //show_message("Arg0: "+nsp_string_force(_a0)+", isString: "+string(is_string(_a0)));
	 //show_message("Arg1: "+nsp_string_force(_a1)+", isString: "+string(is_string(_a1)));
  
	 return nsp_string_force(_a0+_a1);
 
	 }
 
	//Convert _as for following functions:
	if is_string(_a0)
	 _a0=real(_a0);
	if is_string(_a1)
	 _a1=real(_a1);
  
	//Subtract:
	if _a2=nspToken[NSP_TOK.subtract] {

	   return string(_a0-_a1);
   
	   }

	//Divide:
	if _a2=nspToken[NSP_TOK.divide] {

	   return string(_a0/_a1);
   
	   }

	//Multiply:
	if _a2=nspToken[NSP_TOK.multiply] {

	   return string(_a0*_a1);
   
	   }
   
	//Modulo:
	if _a2=nspToken[NSP_TOK._mod] {

	   return string(_a0 mod _a1);
   
	   }
   
	//Div:
	if _a2=nspToken[NSP_TOK._div] {

	   return string(_a0 div _a1);
   
	   }
   
	//Power:
	if _a2=nspToken[NSP_TOK._power] {

	   return string(power(_a0,_a1));
   
	   }




}
