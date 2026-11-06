ADD_OBJECT_EVENT_GML_HOOK;
if (layer_exists("Backgrounds_wave"))
	depth = layer_get_depth("Backgrounds_wave");
layer_set_visible("Backgrounds_wave", 0);
uTime = shader_get_uniform(shdr_wind, "Time");
background_sprite = bonuspizza