function scr_player_morthook()
{
	jumpstop = 1
	doublejump = 0
	hsp = 0
	vsp = 0
	if (!instance_exists(morthookID))
	{
		state = states.mortjump
		sprite_index = spr_fall
		exit;
	}
	image_speed = 0.35
	x = Approach(x, morthookID.x, movespeed)
	y = Approach(y, morthookID.y, movespeed)
	if (floor(x) == morthookID.x && floor(y) == morthookID.y)
	{
		if(!finalmoveset)
		{
			if (sprite_index != spr__morthook)
			{
				sprite_index = spr__morthook
				image_index = 0
			}
			else if (floor(image_index) == (image_number - 1))
			{
				state = states.mortjump
				sprite_index = spr_mortdoublejumpstart
				image_index = 0
				vsp = -14
				movespeed = (xscale * 12)
			}
		} else {
			//fmod_event_one_shot_3d("event:/sfx/mort/doublejump", x, y)
	        state = states.mortjump
	        sprite_index = spr_mortdoublejumpstart
	        image_index = 0
	        vsp = -14
	        repeat (4)
	            create_debris(x, y, spr_feather)
	        //with (instance_create(x, y, obj_speedlinesup))
	            //playerid = other.id
			// TODO: Deal with this later
	        movespeed = (xscale * 12)
		}
	}
	exit;
}


