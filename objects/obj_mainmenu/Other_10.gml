ADD_OBJECT_EVENT_GML_HOOK;
/// @description Init newstuff text

if(file_exists("changelog.txt"))
{
	var file_buffer = buffer_load("changelog.txt");
	textstring = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);
}

for(var i = 0, _title = false; i < string_length(textstring); i++)
{
	var _char = string_byte_at(textstring, i)
	if(_char = ord("\n"))
	{
		textstring2 += "\n^";
		_title = false;
	}
	
	if(_title)
	{
		textstring2 += chr(_char);
		textstring = string_set_byte_at(textstring, i, ord(" "));
	}
	
	if(i == 0) continue;
		
	var _char_prev = string_byte_at(textstring, i - 1);
	if(_char = ord("#") && _char_prev = ord("\n"))
		_title = true;
}