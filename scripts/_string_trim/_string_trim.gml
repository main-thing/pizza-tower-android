// TODO: Finish recreation of the new string_trim func, for now we are using the old script
if(PRE_2023_GM)
{
	function _string_trim(Inputstring, side = "both", char = " ") {
		/// string_trim(string Inputstring, string side="both", string char=" ")
		// Description: Removes leading and trailing matches of a string.
		// --- Arguments ---
		// Inputstring - the input to trim
		// (optional) side - "left", "right", or "both". Uses "both" when empty.
		// (optional) char - the character to remove. Uses the " " character (space) when empty
		/// Created by Remixful
		if argument_count >= 2 { if (argument[1] == "left" or argument[1] == "right" or argument[1] == "both") side = argument[1] }
		if argument_count == 3 { char = string(argument[2]) }
		var new_string = Inputstring
		if side == "left" or side == "both" {
		    var _start = 0
		    for(var i = 1;i <= string_length(new_string);i++) {
		        if string_char_at(new_string, i) != char{
		            _start = i - 1
		            break
		        }
		    }
		    if _start != 0{new_string = string_delete(new_string,1,_start)}
		}
		if side == "right" or side == "both"{
		    var _end = 0
		    for(var i = string_length(new_string);i > 0;i--) {
		        if string_char_at(new_string, i) != char{
		            _end = i + 1
		            break
		        }
		    }
		    if _end != 0{new_string = string_delete(new_string,_end,string_length(new_string))}
		}
		return new_string
	}

	/*
	function string_trim(str, substr = [9, 10, 11, 12, 13, 32, 133, 160, 5760, 8192, 8193, 8194, 8195, 8196, 8197, 8198, 8199, 8200, 8201, 8202, 8232, 8233, 8239, 8287, 12288])
	{	
		var _chars_to_remove = ds_list_create()
		for(var i = 0; i < array_length(substr); i++)
		{
			if(is_real(substr[i]))
				ds_list_add(_chars_to_remove, substr[i])
			else
				ds_list_add(_chars_to_remove, ord(substr[i]))
		}
	
		for(var i = 0, dir = 0, output = str; i < string_length(str); )
		{
			// check if it's not present in the remove list
			if(ds_list_find_index(_chars_to_remove, string_ord_at(str, i)) == -1)
			{
			
				if(dir == 1)
					return output;
				
				i = string_length(str);
				dir = 1;
			}
		
		
			
			if(dir) i-- else i++
		
		}
		ds_list_destroy(_chars_to_remove)
	}
	*/
}
