image_speed = 0.35
followQueue = ds_queue_create()
hsp = 0
vsp = 0
grav = 0.23
movespeed = 3
sprite_index = spr_noisebomb_intro
instance_create(x, y, obj_baddietaunteffect)
playerid = obj_player1
with (playerid)
{
	state = states.backbreaker
	sprite_index = spr_bossintro
	image_index = 0
	scr_soundeffect(sfx_scream5)
}
