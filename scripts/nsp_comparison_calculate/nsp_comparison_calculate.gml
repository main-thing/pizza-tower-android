/// @description nsp_comparison_calculate(Value 1, Value 2, Token)
/// @param Value 1
/// @param  Value 2
/// @param  Token
function nsp_comparison_calculate(_a0, _a1, _a2) {
	/*
	Underlying NSP script.
	NOTE: Add error checking for incompatible data types.
	*/
	var nspToken=global.nspToken;

	//Equal:
	if _a2=nspToken[NSP_TOK.equal] {
    
	 return string( (_a0==_a1)*1.0 );
 
	 }
 
	//Unequal:
	if _a2=nspToken[NSP_TOK.unequal] {

	 return string( (_a0<>_a1)*1.0 );
   
	 }
	if _a2=nspToken[NSP_TOK.notequal] {

	 return string( (_a0!=_a1)*1.0 );
   
	 }
 
	//Convert arguments for following functions:
	if is_string(_a0)
	 _a0=real(_a0);
	if is_string(_a1)
	 _a1=real(_a1);
  
	//Larger:
	if _a2=nspToken[NSP_TOK.larger] {

	 return string( (_a0>_a1)*1.0 );
   
	 }

	//Larger or equal:
	if _a2=nspToken[NSP_TOK.larger_equal] {

	   return string( (_a0>=_a1)*1.0 );
   
	   }

	//Smaller:
	if _a2=nspToken[NSP_TOK.smaller] {

	 return string( (_a0<_a1)*1.0 );
   
	 }
   
	//Smaller or equal:
	if _a2=nspToken[NSP_TOK.smaller_equal] {

	 return string( (_a0<=_a1)*1.0 );
   
	 }
}
