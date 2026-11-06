/// @description nsp_string_crop(String)
/// @param String
function nsp_string_crop(_argument0) 
{
	/*
	Removes all whitespace from the beginning and the end of the string _a0.
	*/
	
	var work_str = _argument0;
	
	//Crop from the beginning:
	while
	(
		string_char_at(work_str, 1) == " "	||
		string_char_at(work_str, 1) == "\n"	||
		string_char_at(work_str, 1) == "\r"	||
		string_char_at(work_str, 1) == "\t"
	) 
	{
		work_str = string_delete(work_str, 1, 1);
	}
  
	//Crop from the end:
	while
	(
		string_char_at(work_str, string_length(work_str)) == " "	||
		string_char_at(work_str, string_length(work_str)) == "\n"	||
		string_char_at(work_str, string_length(work_str)) == "\r"	||
		string_char_at(work_str, string_length(work_str)) == "\t"
	) 
	{
		work_str = string_delete(work_str, string_length(work_str), 1);
	}
	
	return work_str;
}
