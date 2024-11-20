function get_savefile_ini()
{
	if(os_type == os_android)
	{
		return concat("/storage/emulated/0/Documents/pizza tower android/saves/saveData", global.currentsavefile, ".ini.png");
	}
	else return concat("saveData", global.currentsavefile, ".ini");
}

