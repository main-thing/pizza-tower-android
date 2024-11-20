if (ds_list_find_index(global.baddieroom, id) == -1)
{
	ds_list_add(global.baddieroom, id)
	instance_create(x, y, obj_bombexplosion)
	with(obj_music){
		audio_stop_sound(musicID)
		music = mu_miniboss
		musicID = scr_music(music)
	}
	instance_destroy()
}
