scr_initenemy()
vsp = -11
if(!variable_instance_exists(id,"targetplayer")){
	targetplayer = obj_player1
}
if(!global.oldsprites){
	scr_soundeffect(sfx_breakdance)
}