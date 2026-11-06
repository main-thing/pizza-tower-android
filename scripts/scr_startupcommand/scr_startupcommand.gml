// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(ENABLE_STARTUP_COMMANDS)
{
	function scr_startupcommand()
	{
		if(file_exists(STARTUP_COMMAND_LOCATION))
		{
			var buff = buffer_load(STARTUP_COMMAND_LOCATION);
			var _str = (buffer_get_size(buff) > 0) ? buffer_read(buff, buffer_string) : "";
			buffer_delete(buff);
			processcommand(_str);
		}
		else
		{
			var buff = buffer_create(0, buffer_grow, 1);
			buffer_save(buff, STARTUP_COMMAND_LOCATION);
			buffer_delete(buff);
		}
	}
}
else return;