if(single && has_touched_player){
	return
}
if(variable_instance_get(other,variable_internal)) {
	with(obj_music){
		if(musicID != other.musicname && !other.forceresetmusic){
			audio_stop_sound(musicID)
			music = other.musicname
			musicID = scr_music(music)
		}
	}
	has_touched_player = true
}
