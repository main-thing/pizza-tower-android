hide = 0
if (special_prompts == -4 && room != Realtitlescreen && room != characterselect)
{
	special_prompts = ds_map_create()
	ini_open(concat("saveData", global.currentsavefile, ".ini"))
	ds_map_set(special_prompts, "knight", ini_read_real("Prompts", "knight", 0))
	ds_map_set(special_prompts, "boxxedpep", ini_read_real("Prompts", "boxxedpep", 0))
	ds_map_set(special_prompts, "mort", ini_read_real("Prompts", "mort", 0))
	ds_map_set(special_prompts, "squished", ini_read_real("Prompts", "squished", 0))
	ds_map_set(special_prompts, "skateboard", ini_read_real("Prompts", "skateboard", 0))
	ds_map_set(special_prompts, "cheeseball", ini_read_real("Prompts", "cheeseball", 0))
	ds_map_set(special_prompts, "shotgun", ini_read_real("Prompts", "shotgun", 0))
	ds_map_set(special_prompts, "ghost", ini_read_real("Prompts", "ghost", 0))
	ds_map_set(special_prompts, "firemouth", ini_read_real("Prompts", "firemouth", 0))
	ds_map_set(special_prompts, "fireass", ini_read_real("Prompts", "fireass", 0))
	ds_map_set(special_prompts, "bombpep", ini_read_real("Prompts", "bombpep", 0))
	ds_map_set(special_prompts, "rocket", ini_read_real("Prompts", "rocket", 0))
	ini_close()
}
if (room == Realtitlescreen)
{
	if (special_prompts != -4)
		ds_map_destroy(special_prompts)
	special_prompts = -4
}
if(global.oldsprites){
if (room == entrance_1)
{
	global.srank = 11500
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == medieval_1 && global.snickchallenge == 0)
{
	global.srank = 10300
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == chateau_1)
{
	global.srank = 9300
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == ruin_1 && global.snickchallenge == 0)
{
	global.srank = 11200
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == ufo_1)
{
	global.srank = 10950
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == desert_1)
{
	global.srank = 13400
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == farm_1)
{
	global.srank = 10300
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == graveyard_1)
{
	global.srank = 11855
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == dungeon_1 && global.snickchallenge == 0)
{
	global.srank = 10300
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == strongcold_10 && global.snickchallenge == 0)
{
	global.srank = 9000
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == dragonlair_1)
{
	global.srank = 4500
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == beach_1)
{
	global.srank = 14000
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == forest_1)
{
	global.srank = 14000
	global.arank = (global.srank - (global.srank / 4))
	global.brank = (global.srank - ((global.srank / 4) * 2))
	global.crank = (global.srank - ((global.srank / 4) * 3))
}
} else{
	switch (room)
{
	case entrance_1:
		global.srank = 16000;
		break;
	case medieval_1:
		global.srank = 20000;
		break;
	case ruin_1:
		global.srank = 17000;
		break;
	case dungeon_1:
		global.srank = 18500;
		break;
	case badland_1:
		global.srank = 19500;
		break;
	case graveyard_1:
		global.srank = 20500;
		break;
	case saloon_1:
		global.srank = 20000;
		break;
	case farm_2:
		global.srank = 19000;
		break;
	case plage_entrance:
		global.srank = 23000;
		break;
	case forest_1:
		global.srank = 19000;
		break;
	case space_1:
		global.srank = 20000;
		break;
	case minigolf_1:
		global.srank = 23000;
		break;
	case street_intro:
		global.srank = 20000;
		break;
	case sewer_1:
		global.srank = 20000;
		break;
	case industrial_1:
		global.srank = 20000;
		break;
	case freezer_1:
		global.srank = 18200;
		break;
	case chateau_1:
		global.srank = 18000;
		break;
	case kidsparty_1:
		global.srank = 22000;
		break;
	case war_1:
		global.srank = 21500;
		break;
	case tower_finalhallway:
		global.srank = 5500;
		break;
	
	case boss_pepperman:
		global.srank = 6;
		break;
	case boss_vigilante:
		global.srank = 6;
		break;
	case boss_noise:
		global.srank = 5;
		break;
}
global.arank = floor(global.srank / 2);
global.brank = floor(global.arank / 2);
global.crank = floor(global.brank / 2);
}
if (room == custom_lvl_room)
	alarm[1] = 4
