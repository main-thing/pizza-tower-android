enum afterimage
{
	afterimage,
	mach3effect,
	heatattack,
	firemouth,
	blue,
	blur,
	enemy,
	fakepep,
	custom,
	enum_length // used to check how many afterimage types there are
}

depth = 1
global.afterimage_list = ds_list_create()
alpha = array_create(afterimage.enum_length, 1)
alpha[afterimage.heatattack] = 0.5
if(global.usecustomafterimageshaders){
	//_uniformcolor = shader_get_uniform(shd_custom_afterimage, "u_imagecolor");
}
if(global.usefiremouthshaders){
	shd_alpha = shader_get_uniform(shd_firemouth_afterimage, "newAlpha")
}
