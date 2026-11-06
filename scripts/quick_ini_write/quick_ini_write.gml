function quick_ini_write_real(_a0, _a1, _a2, _a3)
{
	with (obj_savesystem)
	{
		ini_open_from_string(ini_str)
		ini_write_real(_a1, _a2, _a3)
		ini_str = ini_close()
	}
	exit;
}

