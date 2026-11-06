/// @description nsp_tokenize(String, Token List)
/// @param String
/// @param  Token List
function nsp_tokenize(_a0, _a1) 
{
	/*
	Underlying NSP script.
	Returns: 1 = Success, 0 = Failure
	*/
	var i, work_str, token, tokenArray, list;
	var copy_1, copy_2, copy_3;

	//Setup:
	work_str = _a0;
	list = _a1;

	tokenArray = global.nspToken;
	work_str = nsp_string_crop(work_str);

	//*** TOKENIZATION LOOP ***
	while(string_length(work_str) > 0) 
	{
		token = "";

		for(i = 1; i <= string_length(work_str); i += 1) 
		{
			copy_1 = string_copy(work_str,i,1);
			copy_2 = string_copy(work_str,i,2);
			copy_3 = string_copy(work_str,i,3);
 
			if(string_char_at(work_str, i) == tokenArray[NSP_TOK.quote])
				continue;
 
			//Whitespace:
			if
			(
				copy_1 == " "	|| 
				copy_1 == "\n"	|| 
				copy_1 == "\r"	|| 
				copy_1 == "\t"
			) 
			{
				if(i != 1) 
				{
					ds_list_add(list, string_copy(work_str, 1, i - 1));
					work_str = string_delete(work_str, 1, i);
					break;
				}    
			}  
			//Complex locals:
			else if (copy_1=".") 
			{
				if(i != 1 and string_digits(string_copy(work_str, i + 1 , 1)) != string_copy(work_str, i + 1 , 1) )
				{
					ds_list_add(list, string_copy(work_str, 1 , i - 1));
					work_str = string_delete(work_str, 1 , i - 1);
					break;
				}
      
			}
			//Default tokens:
			else if 
			(   
				copy_1 == "{"	||
				copy_1 == "}"	||
				copy_1 == "("	||
				copy_1 == ")"	||
				copy_1 == ";"	||
				copy_1 == ","   
			) 
			{    
				token = copy_1;

				if(i != 1)
					ds_list_add(list, string_copy(work_str, 1, i - 1));
					
				ds_list_add(list,token);
				work_str = string_delete(work_str, 1, i);
				break;              
			}           
			//Tokens of length 3:
			else if 
			(	
				copy_3 == tokenArray[NSP_TOK.multiply]		||
				copy_3 == tokenArray[NSP_TOK.divide]		||
				copy_3 == tokenArray[NSP_TOK._div]			||
				copy_3 == tokenArray[NSP_TOK._mod]			||
				copy_3 == tokenArray[NSP_TOK._power]		||
				copy_3 == tokenArray[NSP_TOK.add]			||
				copy_3 == tokenArray[NSP_TOK.subtract]		||
				copy_3 == tokenArray[NSP_TOK.equal]			||
				copy_3 == tokenArray[NSP_TOK.larger]		||
				copy_3 == tokenArray[NSP_TOK.larger_equal]	||
				copy_3 == tokenArray[NSP_TOK.smaller]		||
				copy_3 == tokenArray[NSP_TOK.smaller_equal]	||
				copy_3 == tokenArray[NSP_TOK.unequal]		||
				copy_3 == tokenArray[NSP_TOK.notequal]		||
				copy_3 == tokenArray[NSP_TOK._and]			||
				copy_3 == tokenArray[NSP_TOK._and2]			||
				copy_3 == tokenArray[NSP_TOK._or]			||
				copy_3 == tokenArray[NSP_TOK._or2]			||
				copy_3 == tokenArray[NSP_TOK._xor]			||
				copy_3 == tokenArray[NSP_TOK._xor2]			||
				copy_3 == tokenArray[NSP_TOK.assign]
			) 
			{

				token = copy_3;
				if(nsp_token_is_valid(token, string_copy(work_str, i - 1, 3 + 2))) 
				{
					if(i != 1)
						ds_list_add(list, string_copy(work_str, 1, i - 1));
						
					ds_list_add(list,token);
					work_str = string_delete(work_str, 1, i + 2);
					break;
				}
			}
			//Tokens of length 2:
			else if 
			(   
				copy_2 == tokenArray[NSP_TOK.multiply]		||
				copy_2 == tokenArray[NSP_TOK.divide]		||
				copy_2 == tokenArray[NSP_TOK._div]			||
				copy_2 == tokenArray[NSP_TOK._mod]			||
				copy_2 == tokenArray[NSP_TOK._power]		||
				copy_2 == tokenArray[NSP_TOK.add]			||
				copy_2 == tokenArray[NSP_TOK.subtract]		||
				copy_2 == tokenArray[NSP_TOK.equal]			||
				copy_2 == tokenArray[NSP_TOK.larger]		||
				copy_2 == tokenArray[NSP_TOK.larger_equal]	||
				copy_2 == tokenArray[NSP_TOK.smaller]		||
				copy_2 == tokenArray[NSP_TOK.smaller_equal]	||
				copy_2 == tokenArray[NSP_TOK.unequal]		||
				copy_2 == tokenArray[NSP_TOK.notequal]		||
				copy_2 == tokenArray[NSP_TOK._and]			||
				copy_2 == tokenArray[NSP_TOK._and2]			||
				copy_2 == tokenArray[NSP_TOK._or]			||
				copy_2 == tokenArray[NSP_TOK._or2]			||
				copy_2 == tokenArray[NSP_TOK._xor]			||
				copy_2 == tokenArray[NSP_TOK._xor2]			||
				copy_2 == tokenArray[NSP_TOK.assign] 
			) 
			{
            
				token = copy_2;
				if(nsp_token_is_valid(token,string_copy(work_str, i - 1, 2 + 2))) 
				{
					if(i != 1)
						ds_list_add(list,string_copy(work_str, 1 , i - 1));
						
					ds_list_add(list,token);
					work_str = string_delete(work_str, 1 , i + 1);
					break;
				}
            
			}
			//Tokens of length 1:
			else if 
			(   
				copy_1 == tokenArray[NSP_TOK.multiply]		||
				copy_1 == tokenArray[NSP_TOK.divide]		||
				copy_1 == tokenArray[NSP_TOK._div]			||
				copy_1 == tokenArray[NSP_TOK._mod]			||
				copy_1 == tokenArray[NSP_TOK._power]		||
				copy_1 == tokenArray[NSP_TOK.add]			||
				copy_1 == tokenArray[NSP_TOK.subtract]		||
				copy_1 == tokenArray[NSP_TOK.equal]			||
				copy_1 == tokenArray[NSP_TOK.larger]		||
				copy_1 == tokenArray[NSP_TOK.larger_equal]	||
				copy_1 == tokenArray[NSP_TOK.smaller]		||
				copy_1 == tokenArray[NSP_TOK.smaller_equal]	||
				copy_1 == tokenArray[NSP_TOK.unequal]		||
				copy_1 == tokenArray[NSP_TOK.notequal]		||
				copy_1 == tokenArray[NSP_TOK._and]			||
				copy_1 == tokenArray[NSP_TOK._and2]			||
				copy_1 == tokenArray[NSP_TOK._or]			||
				copy_1 == tokenArray[NSP_TOK._or2]			||
				copy_1 == tokenArray[NSP_TOK._xor]			||
				copy_1 == tokenArray[NSP_TOK._xor2]			||
				copy_1 == tokenArray[NSP_TOK.assign] 
			) 
			{
				token = copy_1;
				if(nsp_token_is_valid(token, string_copy(work_str, i - 1  ,1 + 2)))
				{
					if(i != 1) 
						ds_list_add(list, string_copy(work_str, 1 , i - 1));
						
					ds_list_add(list,token);
					work_str = string_delete(work_str, 1, i);
					break;    
				}
             
			}
			else if(i == string_length(work_str))
			{
				ds_list_add(list, work_str);
				work_str = "";
				break;
			}    
		}
	 }
 
	//*** TIDY UP 1 ***
	i = ds_list_size(list) - 1;

	while (i >= 0) 
	{
		list[| i] = nsp_string_crop(list[| i]);
 
		switch (list[| i]) 
		{
   
			case "begin":
				list[|i] = "{";
			break;
   
			case "end":
				list[|i] = "}";
			break;
   
			case "global":
				if(i == ds_list_size(list) - 1) 
					return 0; 
				
				list[| i + 1] = "global" + nsp_string_crop(list[| i + 1]);
				ds_list_delete(list, i);            
			break;
   
			case "states":
				if(i == ds_list_size(list) - 1) 
					return 0;  
    
				list[| i + 1] = "states" + nsp_string_crop(list[| i + 1]);
				ds_list_delete(list, i);           
			break;
   
			case "":
				ds_list_delete(list, i);
			break;
   
			default:
				var c;
				c = nsp_get_constant(list[| i]);
				if(c != pointer_invalid)
					list[| i] = string(c);
			break;
		};
 
		i -= 1;
	 }
  
	//DEBUG:  
	//show_message("Input string: " + _a0);
	//show_message("Tokenized string: "+nsp_list_to_string(list, 0, ds_list_size(list)-1, " | "));
 
	return 1;
}