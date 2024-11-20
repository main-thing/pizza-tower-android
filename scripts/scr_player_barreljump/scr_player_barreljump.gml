function scr_player_barreljump()
{
	image_speed = 0.35
	hsp = movespeed
	move = (key_right + key_left)
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_barreljump)
		sprite_index = spr_barrelfall
	if key_jump && !finalmoveset
		input_buffer_jump = 0
	if ((!jumpstop) && (!key_jump2) && vsp < 0)
	{
		jumpstop = 1
		vsp /= 20
	}
	if (move != 0)
	{
		if (move == xscale)
			movespeed = Approach(movespeed, (xscale * 8), 0.5)
		else
			movespeed = Approach(movespeed, 0, 0.5)
		if (movespeed <= 0)
			xscale = move
	}
	else
		movespeed = Approach(movespeed, 0, 0.5)
	if(finalmoveset){
		if ((input_buffer_jump > 0) && (!key_down) && (vsp > 0) && can_jump)
	    {
	        input_buffer_jump = 0
	        scr_soundeffect(sfx_jump)
	        vsp = -8.5
	        if ((move != xscale) && (move != 0))
	        {
	            if ((sign(movespeed) == 1))
	                xscale = move
	        }
	        state = states.barreljump
	        sprite_index = spr_barreljump
	        image_index = 0
	        jumpstop = 0
	        create_particle(x, y, (3 << 0), 0)
	    }
	}
	if grounded
	{
		state = states.barrel
		sprite_index = spr_barrelland
		image_index = 0
		create_particle(x, y, particle.landcloud, 0)
	}
	if (place_meeting((x + sign(hsp)), y, obj_solid) && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
		movespeed = 0
	exit;
}

