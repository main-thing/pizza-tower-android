function scr_player_blockstance()
{
	hsp = Approach(hsp, 0, 0.5)
	movespeed = 0
	if (sprite_index == spr_airattackstart && floor(image_index) == (image_number - 1))
		sprite_index = spr_airattack
	if ((!key_attack) && sprite_index != spr_airattackstart)
	{
		state = states.normal
		landAnim = 0
	}
	exit;
}

