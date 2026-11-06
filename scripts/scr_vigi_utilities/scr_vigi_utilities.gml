function scr_revolver()
{
	if key_slap2
	{
		if (move == 0)
			movespeed = 0
		sprite_index = spr_playerV_revolverstart
		image_index = 0
		state = states.revolver
	}
}

function scr_airrevolver()
{
	if key_slap2
	{
		vsp = -5
		state = states.revolver
		image_index = 0
		sprite_index = spr_playerV_airrevolver
		image_index = 0
		with (instance_create((x + (xscale * 20)), (y + 20), obj_shotgunbullet))
		{
		is_solid = 0
		image_xscale = other.xscale
		}
		scr_soundeffect(sfx_killingblow)
	}
}

function scr_dynamite()
{
	if (key_shoot2 && (!instance_exists(dynamite_inst)))
	{
		if (move == 0)
			movespeed = 0
		state = states.dynamite
		sprite_index = spr_playerV_dynamitethrow
		image_index = 0
		with (instance_create(x, y, obj_dynamite))
		{
			image_xscale = other.xscale
			movespeed = 6
			vsp = -6
			other.dynamite_inst = id
			playerid = other.id
		}
	}
}

function scr_airdynamite()
{
	if (key_shoot2 && (!instance_exists(dynamite_inst)))
	{
		vsp = -5
		state = states.dynamite
		image_index = 0
		sprite_index = spr_playerV_dynamitethrow
		with (instance_create(x, y, obj_dynamite))
		{
			image_xscale = other.xscale
			other.dynamite_inst = id
			playerid = other.id
			movespeed = (other.movespeed + 4)
			vsp = -6
		}
	}
}

function scr_crouchdynamite()
{
	if (key_shoot2 && (!instance_exists(dynamite_inst)))
	{
	if (move == 0)
			movespeed = 0
		state = states.dynamite
		image_index = 0
		sprite_index = spr_playerV_dynamitethrow
		with (instance_create(x, y, obj_dynamite))
		{
			image_xscale = other.xscale
			movespeed = 0
			vsp = -6
			other.dynamite_inst = id
			playerid = other.id
		}
	}
}