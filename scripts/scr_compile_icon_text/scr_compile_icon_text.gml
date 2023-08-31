function scr_compile_icon_text(text, pos = 1, return_array = false)
{
	var arr = [];
	var len = string_length(text);
	var newline = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	var char_x = 0;
	var char_y = 0;
	
	for (var saved_pos = 1; pos <= len; pos += 1)
	{
		var start = pos;
		var char = string_ord_at(text, pos);
		switch char
		{
			case ord("\n"):
				char_y += newline;
				char_x = 0;
				break;
			
			case ord("{"):
				var effect = string_copy(text, pos, 3);
				var te = (1 << 0);
				pos += 3;
				var n = scr_compile_icon_text(text, pos, true);
				switch (effect)
				{
					case "{s}":
						te = (1 << 0);
						break;
					case "{u}":
						te = (2 << 0);
						break;
				}
				array_push(arr, [char_x, char_y, (2 << 0), te, n[0]]); // probably. originally 2
				pos = n[1];
				char_x = n[2];
				char_y = n[3];
				break;
			
			case ord("["):
				var button = string_copy(text, pos, 3);
				var t = (1 << 0);
				
				var b = (0 << 0)
				switch (button)
				{
					case "[D]":
                        b = (3 << 0)
                        break
                    case "[U]":
                        b = (0 << 0)
                        break
                    case "[M]":
                        b = (7 << 0)
                        break
                    case "[J]":
                        b = (8 << 0)
                        break
                    case "[G]":
                        b = (6 << 0)
                        break
                    case "[F]":
                        b = (4 << 0)
                        break
                    case "[B]":
                        b = (5 << 0)
                        break
                    case "[L]":
                        b = (1 << 0)
                        break
                    case "[R]":
                        b = (2 << 0)
                        break
                    case "[S]":
                        b = (9 << 0)
                        break
                    case "[T]":
                        b = (10 << 0)
                        break
                    case "[g]":
                        b = (11 << 0)
                        break
                    case "[s]":
                        b = (12 << 0)
                        break
				}
				array_push(arr, [char_x, char_y, t, b]);
				char_x += 32;
				pos += 2;
				break;
			
			case ord("/"):
				if (return_array)
				{
					saved_pos = pos;
					pos = len + 1;
				}
				break;
			
			default:
				while ((pos + 1) <= len)
				{
					char = string_ord_at(text, pos + 1);
					if (char != ord("[") && char != ord("\n") && char != ord("{") && char != ord("/"))
						pos += 1;
					else
						break;
				}
				n = string_copy(text, start, (pos - start) + 1);
				array_push(arr, [char_x, char_y, (0 << 0), n]); // probably. originally 0
				char_x += string_width(n);
				break;
		}
	}
	if (return_array)
		return [arr, saved_pos, char_x, char_y];
	return arr;
}