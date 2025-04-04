function scr_player_mach1()
{
	image_speed = 0.5
	landAnim = 0
	machhitAnim = 0
	crouchslideAnim = 1
	dir = xscale
	move = (key_left + key_right)
	if (scr_solid((x + xscale), y) && ((!(place_meeting((x + xscale), y, obj_slope))) or scr_solid_slope((x + sign(hsp)), y)))
	{
		mach2 = 0
		state = states.normal
		movespeed = 0
	}
	if (!(place_meeting(x, (y + 1), obj_railparent)))
		hsp = (xscale * movespeed)
	else
	{
		var _railinst = instance_place(x, (y + 1), obj_railparent)
		hsp = ((xscale * movespeed) + (_railinst.movespeed * _railinst.dir))
	}
	if (xscale != move && move != 0)
	{
		sprite_index = spr_mach1
		image_index = 0
		momemtum = 0
		mach2 = 0
		movespeed = 6
		xscale = move
	}
	if grounded
	{
		if (movespeed <= 8)
			movespeed += 0.075
		if (movespeed >= 8)
		{
			state = states.mach2
			particle_set_scale(particle.jumpdust, xscale, 1)
			create_particle(x, y, particle.jumpdust, 0)
		}
		if (vsp > 0)
			jumpstop = 0
		if (!instance_exists(dashcloudid))
		{
			with (instance_create(x, y, obj_dashcloud))
			{
				image_xscale = other.xscale
				other.dashcloudid = id
			}
		}
		if (sprite_index != spr_mach1 && vsp > 0)
		{
			sprite_index = spr_mach1
			image_index = 0
		}
		if key_jump
		{
			scr_soundeffect(sfx_jump)
			sprite_index = spr_airdash1
			image_index = 0
			dir = xscale
			momemtum = 1
			vsp = -11
			jumpAnim = 1
		}
	}
	else if (sprite_index != spr_airdash1)
		sprite_index = spr_airdash2
	if (sprite_index == spr_airdash1 && floor(image_index) == (image_number - 1))
		sprite_index = spr_airdash2
	if(character != "S")
	{
		if (!key_attack)
		{
			state = states.normal
			image_index = 0
		}
	} else {
		if(move == 0){
			state = states.normal
			image_index = 0
		}
	}
	if ((!key_jump2) && (!jumpstop) && vsp < 0.5)
	{
		vsp /= 20
		jumpstop = 1
	}
	if (place_meeting((x + xscale), y, obj_solid) && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	{
		movespeed = 0
		state = states.normal
	}
	switch character
	{
		case "V":
			if key_slap2
			{
				scr_soundeffect(sfx_killingblow)
				sprite_index = spr_playerV_airrevolver
				image_index = 0
				vsp = -5
				state = states.revolver
				with (instance_create((x + (xscale * 20)), (y + 20), obj_shotgunbullet))
				{
					is_solid = 0
					image_xscale = other.xscale
				}
			}
			if (key_shoot2 && (!instance_exists(dynamite_inst)))
			{
				image_index = 0
				sprite_index = spr_playerV_dynamitethrow
				vsp = -5
				state = states.dynamite
				with (instance_create(x, y, obj_dynamite))
				{
					image_xscale = other.xscale
					movespeed = (other.movespeed + 4)
					vsp = -6
					other.dynamite_inst = id
					playerid = other.id
				}
			}
			break
	}
	if (key_attack && (!(place_meeting((x + xscale), y, obj_solid))) && character == "S" && grounded)
	{
		state = states.handstandjump
		movespeed = 0
	}
	if (key_down && (!grounded))
	{
		if (!shotgunAnim)
		{
			sprite_index = spr_bodyslamstart
			image_index = 0
			state = states.freefallprep
			vsp = -5
		}
		else
		{
			sprite_index = spr_shotgunjump1
			image_index = 0
			state = states.freefallprep
			vsp = -5
			with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
			{
				sprite_index = sprite10391
				spdh = -10
				spd = 0
			}
			with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
			{
				sprite_index = sprite10391
				spdh = -10
				spd = 5
			}
			with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
			{
				sprite_index = sprite10391
				spdh = -10
				spd = -5
			}
		}
	}
	scr_dotaunt()
	exit;
}

