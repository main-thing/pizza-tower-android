function quick_ini_write_real(argument0, argument1, argument2, argument3)
{
	with (obj_savesystem)
	{
		ini_open_from_string(ini_str)
		ini_write_real(argument1, argument2, argument3)
		ini_str = ini_close()
	}
	exit;
}

