function quick_ini_read_real(_a0, _a1, _a2, _a3)
{
	ini_open_from_string(obj_savesystem.ini_str)
	var b = ini_read_real(_a1, _a2, _a3)
	ini_close()
	return b;
}

