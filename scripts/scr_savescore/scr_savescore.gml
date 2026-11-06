function scr_savescore(_a0)
{
	if ((global.collect + global.collectN) >= global.srank)
	{
		global.rank = "s";
		if(global.showrank)
		{
			if (global.combodropped) 
			{
				scr_soundeffect(mu_ranks);
			}
		}
		if (!global.combodropped)
		{
			global.rank = "p";
			if(global.showrank)
			{
				scr_soundeffect(mu_rankp);
			}
		}
		if (global.snickchallenge == 1)
			global.SAGEsnicksrank = 1;
	}
	else if ((global.collect + global.collectN) > global.arank) 
	{
		global.rank = "a";
		if(global.showrank) 
		{
			scr_soundeffect(mu_ranka);
		}
	}
	else if ((global.collect + global.collectN) > global.brank) 
	{
		global.rank = "b";
		if(global.showrank) 
		{
			scr_soundeffect(mu_rankb);
		}
	}
	else if ((global.collect + global.collectN) > global.crank) 
	{
		global.rank = "c";
		if(global.showrank) 
		{
			scr_soundeffect(mu_rankc);
		}
	}
	else 
	{
		global.rank = "d";
		if(global.showrank)
		{
			scr_soundeffect(mu_rankd);
		}
	}
	if(!global.showrank)
	{
		scr_soundeffect(mu_rankd);
	}
	audio_stop_sound(mu_pizzatime);
	audio_stop_sound(mu_noiseescape);
	audio_stop_sound(mu_dragonlair);
	audio_stop_sound(mu_snickchallenge);
	audio_stop_sound(mu_snickchallengeend);
	ini_open_from_string(obj_savesystem.ini_str);
	
	if(ini_read_real("Highscore", _a0, 0) < global.collect)
		ini_write_real("Highscore", _a0, global.collect);
		
	if(ini_read_real("Treasure", _a0, 0) == 0)
		ini_write_real("Treasure", _a0, global.treasure);
		
	if(global.secretfound > 3)
		global.secretfound = 3;
		
	if(ini_read_real("Secret", _a0, 0) < global.secretfound)
		ini_write_string("Secret", _a0, global.secretfound);
		
	if(ini_read_real("Toppin", (_a0 + "1"), 0) == 0)
		ini_write_real("Toppin", (_a0 + "1"), global.shroomfollow);
		
	if(ini_read_real("Toppin", (_a0 + "2"), 0) == 0)
		ini_write_real("Toppin", (_a0 + "2"), global.cheesefollow);
		
	if(ini_read_real("Toppin", (_a0 + "3"), 0) == 0)
		ini_write_real("Toppin", (_a0 + "3"), global.tomatofollow);
		
	if(ini_read_real("Toppin", (_a0 + "4"), 0) == 0)
		ini_write_real("Toppin", (_a0 + "4"), global.sausagefollow);
		
	if(ini_read_real("Toppin", (_a0 + "5"), 0) == 0)
		ini_write_real("Toppin", (_a0 + "5"), global.pineapplefollow);
	
	var _rank = ini_read_string("Ranks", _a0, "d");
    var _map = ds_map_create();
    ds_map_set(_map, "d", 0);
    ds_map_set(_map, "c", 1);
    ds_map_set(_map, "b", 2);
    ds_map_set(_map, "a", 3);
    ds_map_set(_map, "s", 4);
    ds_map_set(_map, "p", 5);
    
    if(ds_map_find_value(_map, global.rank) >= ds_map_find_value(_map, _rank))
        ini_write_string("Ranks", _a0, global.rank);
    ds_map_destroy(_map);
	
	obj_savesystem.ini_str = ini_close()
	exit;
}

