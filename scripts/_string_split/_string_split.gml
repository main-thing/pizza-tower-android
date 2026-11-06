if(PRE_2023_GM)
{
	function _string_split(_string, _delimeter)
	{
		var _list = [];
		_string += " ";
		for(var i = 1, _current_str = ""; i < string_length(_string) + 1; i++)
		{
			var _char = string_char_at(_string, i);
			if(_char != _delimeter)
			{
				_current_str += _char;
			}
			else
			{
				array_push(_list, _current_str);
				_current_str = "";
			}
		}
		return _list;
	}
} else exit;