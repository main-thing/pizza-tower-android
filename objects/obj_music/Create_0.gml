pausedmusic = 0
fadeoff = 0
global.music = 0
roomname = obj_null
arena = 0
global.mu = -4
music = -4
secretmusic = -4
musicID = -4
secretmusicID = -4
pillarmusicID = -4
secret = 0
secretend = 0
pillar_on_camera = 0
prevpillar_on_camera = 0
lap2music = mu_chase
escapemusic = mu_pizzatime
finalescapemusic = mu_finalescape
escapemusicID = escapemusic
panicstart = false;
lapstart = false
room_arr = [
	[Realtitlescreen, mu_title, mu_medievalsecret, false], 
	[rm_levelselect, mu_title, mu_medievalsecret, false], 
	[entrance_1, mu_entrance, mu_medievalsecret, false], 
	[dungeon_1, mu_dungeon, mu_dungeonsecret, false], 
	[dungeon_8, mu_dungeon, mu_dungeonsecret, true], 
	[dungeon_9, mu_dungeondepth, mu_dungeonsecret, true],
	[strongcold_1, mu_chateau, mu_medievalsecret, false], 
	[strongcold_2, mu_strongcold, mu_medievalsecret, false], 
	[strongcold_8, mu_strongcold, mu_medievalsecret, false], 
	[strongcold_9, mu_dungeondepth, mu_medievalsecret, false], 
	[strongcold_10, mu_dungeondepth, mu_medievalsecret, false], 
	[medieval_1, mu_medievalentrance, mu_medievalsecret, false], 
	[medieval_2, mu_medievalentrance, mu_medievalsecret, true], 
	[medieval_3, mu_medievalremix, mu_medievalsecret, true], 
	[medieval_5, mu_medievalremix, mu_medievalsecret, true], 
	[medieval_6, mu_medieval, mu_medievalsecret, true],
	[ruin_1, mu_ruin, mu_ruinsecret, false], 
	[ruin_6, mu_ruin, mu_ruinsecret, true], 
	[ruin_7, mu_ruinremix, mu_ruinsecret, true],
	[badland_1, mu_desert, mu_desertsecret, false], 
	[badland_8, mu_desert, mu_desertsecret, true], 
	[badland_9, mu_ufo, mu_desertsecret, true], 
	[badland_mart4, mu_ufo, mu_desertsecret, true], 
	[badland_10, mu_desert, mu_desertsecret, true], 
	[forest_1, mu_forest, mu_medievalsecret, false], 
	[forest_G1, mu_forest, mu_medievalsecret, true], 
	[forest_G1b, mu_gustavo, mu_medievalsecret, false], 
	[forest_5, mu_forest, mu_medievalsecret, true], 
	[chateau_1, mu_chateau, mu_medievalsecret, false], 
	[sewer_1, mu_sewer, mu_medievalsecret, false], 
	[freezer_1, mu_freezer, mu_medievalsecret, false], 
	[kidsparty_1, mu_kidsparty, mu_medievalsecret, false], 
	[minigolf_1, mu_minigolf, mu_medievalsecret, false], 
	[industrial_1, mu_industrial, mu_medievalsecret, false], 
	[street_intro, mu_street, mu_medievalsecret, false], 
	[farm_2, mu_farm, mu_farmsecret, false], 
	[space_1, mu_pinball, mu_pinballsecret, false], 
	[graveyard_1, mu_graveyard, mu_medievalsecret, false], 
	[saloon_1, mu_saloon, mu_saloonsecret, false], 
	[ufo_1, mu_pinball, mu_pinballsecret, false], 
	[plage_entrance, mu_beach, mu_medievalsecret, false], 
	[war_1, mu_war, mu_medievalsecret, false], 
	[characterselect, mu_characterselect, mu_medievalsecret, false],
	[rm_swedish, mu_ufo, mu_pinballsecret, false], 
	[tower_tutorial1, mu_funiculi, mu_funiculi, false], 
	[boss_fakepep, mu_fakepep, mu_fakepep, false], 
	[rm_editor_big, mu_snickchallenge, mu_medievalsecret, false], 
	[dragonlair_1, mu_dungeondepth, mu_medievalsecret, false], 
	[tutorial_room1, mu_tutorial, mu_medievalsecret, false], 
	[normalT_room1, mu_ruin, mu_medievalsecret, false], 
	[normalT_bonus1, mu_dungeondepth, mu_medievalsecret, false], 
	[normalT_room3, mu_ruin, mu_medievalsecret, false], 
	[normalT_bonus2, mu_dungeondepth, mu_medievalsecret, false], 
	[normalT_room5, mu_ruin, mu_medievalsecret, false], 
	[desert_1, mu_desert, mu_desertsecret, false], 
]
