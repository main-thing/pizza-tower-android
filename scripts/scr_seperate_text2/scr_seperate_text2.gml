function scr_separate_text2(str, font, width)
{
	draw_set_font(font);
	while (scr_string_width(str) > (width - string_width("a")))
	{
		var _pos = string_length(str);
		var _oldpos = _pos;
		while (string_char_at(str, _pos) != " ")
		{
			_pos--;
			if (_pos < 0)
				_pos = _oldpos;
		}
		if (string_char_at(str, _pos) == " ")
			str = string_delete(str, _pos, 1);
		str = string_insert("\n", str, _pos);
	}
	return str;
}