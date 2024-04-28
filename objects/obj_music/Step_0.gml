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
if(global.lap){
	if(!lapstart && !global.oldsprites && escapemusic != lap2music){
		audio_stop_sound(musicID)
		escapemusicID = lap2music
		lapstart = true
		music = escapemusicID
		musicID = scr_music(music)
	}
}
if global.panic
{
	if (!panicstart)
	{
		panicstart = true
		if (music != escapemusic && music != finalescapemusic && music != finalescapemusic)
		{	
			music = escapemusicID
			audio_stop_sound(musicID)
			musicID = scr_music(music)
			if (pillarmusicID != -4)
				audio_stop_sound(pillarmusicID)
			pillarmusicID = -4
		}
	}
} else {
	panicstart = false
	escapemusicID = escapemusic
	audio_stop_sound(escapemusicID)
}

