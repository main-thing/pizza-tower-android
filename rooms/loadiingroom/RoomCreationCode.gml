//pal_swap_init_system(shd_pal_swapper)
if(USE_GMLIVE)
{
	if(asset_get_index("obj_gmlive") != -1)
		instance_create(0,0,obj_gmlive)
}
else
{
	NSP_initialize()
}
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
gml_pragma("PNGCrush")
scr_checkcrashcount()