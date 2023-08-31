enum texttype
{
	normal, // just draws the text
	icon, // draws tutorial keys
	array // does scr_draw_text_arr within itself
}
function scr_text_arr_size(array)
{
	var w = 0;
	var newline = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	var h = newline;
	for (var i = 0; i < array_length(array); i++)
	{
		var b = array[i];
		var cx = b[0];
		var cy = b[1];
		var t = b[2];
		var val = b[3];
		
		switch (t)
		{
			case texttype.icon:
				if ((cx + 32) > w)
					w += 32;
				break;
			
			case texttype.array:
				var val2 = b[4];
				var q = scr_text_arr_size(val2);
				if ((cy + q[1]) > h)
					h += (q[1] - newline);
				else if ((cx + q[0]) > w)
					w += q[0];
				break;
			
			case texttype.normal:
				if (cy > h)
					h += newline;
				else
				{
					var sw = string_width(val);
					if ((cx + sw) > w)
						w += string_width(val);
				}
				break;
		}
	}
	return [w, h];
}