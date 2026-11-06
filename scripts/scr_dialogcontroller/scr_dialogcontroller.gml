function scr_string_width(_a0)
{
	var w = 0
	var originalstr = _a0
	var str_arr = array_create(0)
	
	for(var pos = 0; pos < string_length(originalstr); pos++)
	{
		if (string_copy(originalstr, pos, 2) == "\n")
		{
			array_push(str_arr, string_copy(originalstr, 1, pos))
			string_delete(originalstr, 1, pos)
			pos = 0
			if (originalstr == "")
				break
		}
	}
	if (array_length(str_arr) == 0)
		w = string_width(_a0)
	for (var i = 0; i < array_length(str_arr); i++)
	{
		var b = str_arr[i]
		if (string_width(b) > w)
			w = string_width(b)
	}
	return w;
}

function scr_separate_text(_a0)
{
	draw_set_font(font2)
	while (scr_string_width(_a0) > ((obj_camera.original_cam_width - (rpadding * 2)) - string_width("a")))
	{
		var _pos = string_length(_a0)
		var _oldpos = _pos
		while (string_char_at(_a0, _pos) != " ")
		{
			_pos--
			if (_pos < 0)
				_pos = _oldpos
		}
		if (string_char_at(_a0, _pos) == " ")
			_a0 = string_delete(_a0, _pos, 1)
		_a0 = string_insert("\n", _a0, _pos)
	}
	return _a0;
}

function scr_calculate_text(_a0)
{
	draw_set_font(font2)
	pos = 0
	var str2 = ""
	while (pos <= string_length(_a0))
	{
		pos++
		str2 = string_insert(string_char_at(_a0, pos), str2, (string_length(str2) + 1))
		str2 = scr_separate_text(str2)
	}
	return str2;
}

function scr_calculate_height(_a0)
{
	str2 = scr_calculate_text(_a0)
	return string_height(str2);
}

