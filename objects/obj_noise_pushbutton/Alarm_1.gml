if (play_music)
{
	audio_stop_all()
	scr_soundeffect(mu_noiseappear)
}
hspeed = image_xscale * 0.9
obj_tv.message = "UH OH... HERE COMES THE NOISE..."
obj_tv.showtext = 1
obj_tv.alarm[0] = 210
obj_player.sprite_index = spr_player_idle
