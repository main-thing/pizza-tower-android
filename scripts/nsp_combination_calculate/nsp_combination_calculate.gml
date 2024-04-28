/// @description nsp_combination_calculate(Value 1, Value 2, Token)
/// @param Value 1
/// @param  Value 2
/// @param  Token
function nsp_combination_calculate(argument0, argument1, argument2) {
	/*
	NOTE: Add error checking for incompatible data types.
	*/
	var nspToken=global.nspToken;

	//Convert arguments for following functions:
	if is_string(argument0)
	 argument0=real(argument0);
	if is_string(argument1)
	 argument1=real(argument1);
 
	//And:
	if argument2=nspToken[NSP_TOK._and] {
    
	 return string( (argument0 and argument1)*1.0 );
 
	 }
	if argument2=nspToken[NSP_TOK._and2] {
    
	 return string( (argument0 and argument1)*1.0 );
 
	 }
  
	//Or:
	if argument2=nspToken[NSP_TOK._or] {

	 return string( (argument0 or argument1)*1.0 );
   
	 }
	 
	if argument2=nspToken[NSP_TOK._or2] {

	 return string( (argument0 or argument1)*1.0 );
   
	 }

	//Xor:
	if argument2=nspToken[NSP_TOK._xor] {

	 return string( (argument0 xor argument1)*1.0 );
   
	 }
	 
	if argument2=nspToken[NSP_TOK._xor2] {

	 return string( (argument0 xor argument1)*1.0 );
   
	 }





}
