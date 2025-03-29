//pal_swap_init_system(shd_pal_swapper)
if(asset_get_index("obj_gmlive") != -1)
	instance_create(0,0,obj_gmlive)
global.roommessage = "PIZZA TOWER WESTERN BUILD V3"
global.oldsprites = true
global.showrank = false
global.showcollisions = false
global.bossintro = 0
global.vkcount = 0
global.oldhud = false
global.heatmetervisible = true
global.forcehidecontrols = false
global.forceshowcontrols = false
global.hubroom = rm_levelselect
//NSP_initialize()
gml_pragma("PNGCrush")
scr_checkcrashcount()
var _permsarray = ["android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_AUDIO", "android.permission.MANAGE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"]
if(os_type == os_android){
	if(file_exists("saveData.ini") && !file_exists("/storage/emulated/0/Documents/pizza tower android/saves/saveData.ini.png"))
	{
		file_copy("saveData.ini", "/storage/emulated/0/Documents/pizza tower android/saves/saveData.ini.png")
		//show_message("copied")
	}
	if(file_exists("saves/saveData1.ini") && !file_exists("/storage/emulated/0/Documents/pizza tower android/saves/saveData1.ini.png"))
	{
		file_copy("saves/saveData1.ini", "/storage/emulated/0/Documents/pizza tower android/saves/saveData1.ini.png")
		//show_message("copied")
	}
	var _i = 0
	repeat(array_length(_permsarray)){
		os_request_permission(_permsarray[_i])
		_i++
	}
}