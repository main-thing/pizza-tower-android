getout = 400
outtime = 200
getoutspd = 200
outtimespd = 200
randomize()
character = 0
is_noise = false
with (obj_player1)
{
	if(character == "N" or(character == "P" && (!ispeppino))){
		other.is_noise = true
	}
}
upspr = spr_noisepresentup
spr = spr_noisepresent
downspr = spr_noisepresentdown
deadspr = spr_playerN_hurt
if(is_noise){
	upspr = spr_doisepresentup
	spr = spr_doisepresent
	downspr = spr_doisepresentdown
	deadspr = spr_doise_hurt
}
box = 1
image_speed = 0.35
depth = 10
global.boxhp = 20
