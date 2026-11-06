ADD_OBJECT_EVENT_GML_HOOK;
tex_list = -4
draw_flush()
//var group_arr = ["playergroup", "backgroundgroup", "hudgroup", "smallgroup", "baddiegroup", "levelstructuregroup"]
var group_arr = ["playergroup"]
tex_list = ds_list_create()
tex_pos = 0
for (var i = 0; i < array_length(group_arr); i++)
{
	var _tex_array = texturegroup_get_textures(group_arr[i])
	ds_list_add(tex_list, _tex_array)
}
tex_max = ds_list_size(tex_list)
alarm[0] = 70
if(!audio_group_is_loaded(audiogroup_music))
	audio_group_load(audiogroup_music)
if(!audio_group_is_loaded(audiogroup_sfx))
	audio_group_load(audiogroup_sfx)