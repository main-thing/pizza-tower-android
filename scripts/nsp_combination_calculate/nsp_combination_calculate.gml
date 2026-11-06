/// @description nsp_combination_calculate(Value 1, Value 2, Token)
/// @param Value 1
/// @param  Value 2
/// @param  Token
function nsp_combination_calculate(_a0, _a1, _a2) {
	/*
	NOTE: Add error checking for incompatible data types.
	*/
	var nspToken=global.nspToken;

	//Convert arguments for following functions:
	if is_string(_a0)
	 _a0=real(_a0);
	if is_string(_a1)
	 _a1=real(_a1);
 
	//And:
	if _a2=nspToken[NSP_TOK._and] {
    
	 return string( (_a0 and _a1)*1.0 );
 
	 }
	if _a2=nspToken[NSP_TOK._and2] {
    
	 return string( (_a0 and _a1)*1.0 );
 
	 }
  
	//Or:
	if _a2=nspToken[NSP_TOK._or] {

	 return string( (_a0 or _a1)*1.0 );
   
	 }
	 
	if _a2=nspToken[NSP_TOK._or2] {

	 return string( (_a0 or _a1)*1.0 );
   
	 }

	//Xor:
	if _a2=nspToken[NSP_TOK._xor] {

	 return string( (_a0 xor _a1)*1.0 );
   
	 }
	 
	if _a2=nspToken[NSP_TOK._xor2] {

	 return string( (_a0 xor _a1)*1.0 );
   
	 }





}
