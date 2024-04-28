if(!has_touched_player){
	with(obj_music){
		if(musicID != other.musicname && !other.forceresetmusic){
			audio_stop_sound(musicID)
			music = other.musicname
			musicID = scr_music(music)
		}
	}
	has_touched_player = true
}