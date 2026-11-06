ADD_OBJECT_EVENT_GML_HOOK;
scr_deactivate_escape()
with (obj_music)
{
	if (obj_music.secret && !instance_exists(obj_randomsecret))
	{
		audio_sound_gain(secretmusicID, ((audio_sound_get_gain(secretmusic) * 0.8) * global.option_music_volume), 0)
		audio_sound_gain(musicID, ((audio_sound_get_gain(music) * 0.8) * global.option_music_volume), 0)
		audio_pause_sound(musicID)
	}
	else
	{
		audio_sound_gain(musicID, ((audio_sound_get_gain(music) * 0.8) * global.option_music_volume), 0)
		audio_stop_sound(secretmusicID)
	}
}
