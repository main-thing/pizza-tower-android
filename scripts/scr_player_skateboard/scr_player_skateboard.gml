function scr_player_skateboard()
{
	machhitAnim = 0
	crouchslideAnim = 1
	hsp = (xscale * movespeed)
	if(movespeed < 5){
		movespeed = 5
	}
	if key_jump
	{
		state = states.mach2
		vsp = -6
		with (instance_create((x + (xscale * movespeed)), y, obj_skateboardOLD))
		{
			xscale = other.xscale
			hsp = other.hsp
			vsp = -5
		}
	}
	if (scr_solid((x + 1), y) && xscale == 1)
	{
		machhitAnim = 0
		state = states.bump
		hsp = -2.5
		vsp = -3
		mach2 = 0
		image_index = 0
		instance_create((x + 10), (y + 10), obj_bumpeffect)
		instance_create(x, (y + 10), obj_skateboarddebris1)
		instance_create(x, (y + 10), obj_skateboarddebris2)
	}
	else if (scr_solid((x - 1), y) && xscale == -1)
	{
		machhitAnim = 0
		state = states.bump
		hsp = 2.5
		vsp = -3
		mach2 = 0
		image_index = 0
		instance_create((x - 10), (y + 10), obj_bumpeffect)
		instance_create(x, (y + 10), obj_skateboarddebris1)
		instance_create(x, (y + 10), obj_skateboarddebris2)
	}
	sprite_index = spr_player_skateboard
	image_speed = 0.35
	exit;
}

