function scr_player_skateboard()
{
	machhitAnim = 0
	crouchslideAnim = 1
	hsp = (xscale * movespeed)
	if(movespeed < 5) {
		movespeed = 5
	}
	if key_jump
	{
		state = states.mach2
		vsp = -6
		with (instance_create((x + (xscale * movespeed)), y, obj_skateboardOLD))
		{
			image_xscale = other.xscale
			hsp = other.hsp
			vsp = -5
		}
	}
	if (scr_solid((x + xscale), y))
	{
		with (create_debris(x, (y + 10), obj_skateboardebris1)) {
			vsp = random_range(-5, 0)
			hsp = -4
		}
		with (create_debris(x, (y + 10), obj_skateboardebris2)) {
			vsp = random_range(-5, 0)
			hsp = 4
		}
		machhitAnim = 0
		state = states.bump
		hsp = xscale * -2.5
		vsp = -3
		image_index = 0
		instance_create((x + xscale * 10), (y + 10), obj_bumpeffect)
	}
	sprite_index = spr_player_skateboard
	image_speed = 0.35
	if (!instance_exists(obj_slidecloud) && grounded && movespeed > 5)
		instance_create(x, y, obj_slidecloud)
	exit;
}

