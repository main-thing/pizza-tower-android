prevpillar_on_camera = pillar_on_camera
if instance_exists(obj_hungrypillar)
{
	var p = 0
	with (obj_hungrypillar)
	{
		if bbox_in_camera(view_camera[0], 0)
			p = 1
	}
	if (p != pillar_on_camera)
		pillar_on_camera = p
}
else
	pillar_on_camera = 0
if (prevpillar_on_camera != pillar_on_camera)
{
	if pillar_on_camera
	{
		audio_sound_gain(pillarmusicID, (0.6 * global.option_music_volume), 2000)
		audio_sound_gain(musicID, 0, 2000)
	}
	else
	{
		audio_sound_gain(pillarmusicID, 0, 2000)
		audio_sound_gain(musicID, (0.6 * global.option_music_volume), 2000)
	}
}
if global.panic
{
	if (!panicstart)
	{
		panicstart = true
		if (music != mu_pizzatime && music != mu_finalescape && music != mu_chase)
		{	
			music = escapemusicID
			audio_stop_sound(musicID)
			musicID = scr_music(music)
			if (pillarmusicID != -4)
				audio_stop_sound(pillarmusicID)
			pillarmusicID = -4
		}
	}
	if(!global.oldsprites) {
		if(audio_is_playing(mu_pizzatime) && global.laps > 0) {
			audio_stop_sound(mu_pizzatime)
			escapemusicID = mu_chase
			music = escapemusicID
			musicID = scr_music(music)
		}
	} else{
		if(audio_is_playing(mu_chase) && global.laps > 0) {
			audio_stop_sound(mu_chase)
			escapemusicID = mu_pizzatime
			music = escapemusicID
			musicID = scr_music(music)
		}
	}
} else {
	panicstart = false
	escapemusicID = mu_pizzatime
	audio_stop_sound(escapemusicID)
}
