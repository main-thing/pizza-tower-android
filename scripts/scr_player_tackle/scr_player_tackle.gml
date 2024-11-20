function scr_player_tackle()
{
	combo = 0
	mach2 = 0
	hsp = ((-xscale) * movespeed)
	start_running = 1
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	if(sprite_index != spr_lungehit && sprite_index != spr_kungfu1 && sprite_index != spr_kungfu2 && sprite_index != spr_kungfu3){
		if (sprite_index != spr_golfswing)
		{
			if (grounded && vsp > 0.5)
				state = states.normal
		}
		else if (floor(image_index) == (image_number - 1))
			state = states.normal
	}
	else
	{
		invtime = 30;
		movespeed = Approach(movespeed, 0, 0.1);
		if (floor(image_index) == (image_number - 1) && grounded && vsp > 0)
			state = states.normal;
	}
	if (floor(image_index) != (image_number - 1))
		image_speed = 0.35
	else
		image_speed = 0
	exit;
}

