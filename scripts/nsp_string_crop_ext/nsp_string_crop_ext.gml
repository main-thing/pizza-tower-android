/// @description nsp_string_crop_ext(String, Condition)
/// @param String
/// @param  Condition
function nsp_string_crop_ext(_a0, _a1) 
{
	/*
	Removes all matches of _a1 from the beginning and the end of the string _a0.
	*/
	var work_str = _a0;
	var cond_str = _a1;

	//Crop from the beginning:
	while(string_char_at(work_str, 1) == cond_str) 
	{
		work_str = string_delete(work_str, 1, 1);
	}
  
	//Crop from the end:
	while(string_char_at(work_str, string_length(work_str)) == cond_str) 
	{
		work_str = string_delete(work_str, string_length(work_str), 1);
	}
 
	return work_str;
}
