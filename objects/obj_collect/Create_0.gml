if (room == rm_editor)
	exit;
with (other)
{
	if (obj_player1.character == "P" && obj_player1.spotlight == 1 && obj_player1.ispeppino)
		sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
	if ((obj_player1.character == "N" or (!obj_player1.ispeppino)) && obj_player1.spotlight == 1)
		sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
	image_speed = 0.35
	global.collected = 0
	global.collectsound = 0
}
if (obj_player.character == "S")
	sprite_index = spr_snickcollectible1
if (global.leveltorestart == strongcold_10)
	sprite_index = choose(spr_xmastopping1, spr_xmastopping2, spr_xmastopping3, spr_xmastopping4, spr_xmastopping5)
depth = 11
gotowardsplayer = 0
movespeed = 5
