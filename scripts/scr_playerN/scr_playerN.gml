function scr_player_machcancelstart()
{
	hsp = 0;
	vsp = 0;
	movespeed = 0;
	image_speed = 0.5;
	if floor(image_index) == image_number - 1
	{
		state = states.duel+1;
		sprite_index = spr_Sjumpcancel;
		particle_set_scale(particle.jumpdust, xscale, 1);
		create_particle(x, y, particle.jumpdust, 0);
		movespeed = 15;
	}
}
function scr_player_machcancel()
{
	hsp = movespeed;
	move = key_right + key_left;
	if move != 0
		savedmove = move;
	if (sprite_index == spr_breakdancesuper || sprite_index == spr_poundcancel2 || sprite_index == spr_poundcancel1)
	{
		if move != 0
		{
			if (abs(movespeed) < 12)
				movespeed = Approach(movespeed, move * 12, 1);
			else
				movespeed = Approach(movespeed, move * abs(movespeed), 1);
		}
		else
			movespeed = Approach(movespeed, 0, 0.25);
		var xx = movespeed;
		if xx == 0
			xx = xscale;
		if (grounded && vsp > 0 && place_meeting(x + xx, y, obj_solid))
		{
			mask_index = spr_crouchmask;
			if (!place_meeting(x + xx, y, obj_solid) || place_meeting(x + xx, y, obj_destructibles))
			{
				state = states.tumble;
				sprite_index = spr_machroll;
				image_index = 0;
				instance_destroy(instance_place(x + xx, y, obj_destructibles));
				if movespeed != 0
					xscale = sign(movespeed);
				movespeed = abs(movespeed);
				if movespeed < 6
					movespeed = 6;
			}
			mask_index = spr_player_mask;
		}
	}
	else if move != 0
		movespeed = Approach(movespeed, move * 8, 1);
	else
		movespeed = Approach(movespeed, 0, 0.5);
	if (scr_noise_machcancel_grab())
		exit;
	if (key_down && sprite_index != spr_poundcancel1 && !place_meeting(x, y, obj_ventilator) && !grounded)
	{
		sprite_index = spr_poundcancel1;
		state = states.duel+1;
		vsp = 20;
		input_buffer_slap = 0;
		input_buffer_jump = 0;
		image_index = 0;
		exit;
	}
	if grounded && sprite_index == spr_poundcancel1
	{
		scr_soundeffect(sfx_step)
        image_index = 0;
		sprite_index = spr_poundcancel2;
	}
	if (floor(image_index) == image_number - 1 && sprite_index == spr_poundcancel2)
	{
		image_index = 0;
		sprite_index = spr_breakdancesuper;
	}
	if (grounded && !key_down && vsp >= 0 && sprite_index != spr_rampjump)
	{
		vsp = -7;
		with (instance_create(x, y + 20, obj_noiseeffect))
			sprite_index = spr_noisewalljumpeffect
         if move != 0
			xscale = move;
	    sprite_index = spr_rampjump;
		GamepadSetVibration(0, 0.5, 0.5, 0.5);
	}
	if (grounded && key_attack && vsp >= 0 && (sprite_index == spr_wallbounce or sprite_index == spr_rampjump or sprite_index == spr_ratballonbounce))
	{
		scr_soundeffect(sfx_step)
		input_buffer_slap = 0;
		if move != 0
			xscale = move;
		else if savedmove != 0
			xscale = savedmove;
	    with (instance_create(x, y, obj_noiseeffect))
		{
			sprite_index = spr_noisegrounddasheffect;
			image_xscale = other.xscale;
		}
		jumpstop = true;
		state = states.mach3;
		if abs(movespeed) < 12
            movespeed = 12;
		sprite_index = spr_mach4;
		flash = true;
		with (instance_create(x, y, obj_crazyrunothereffect))
			image_xscale = other.xscale;
		image_index = 0;
		noisedoublejump = true;
	}
	if (input_buffer_slap > 0 && key_up)
	{
		input_buffer_slap = 0;
		state = states.punch;
		image_index = 0;
		sprite_index = spr_breakdanceuppercut;
		if(!global.oldsprites)
            scr_soundeffect(sfx_uppercut2);
		vsp = -10;
		movespeed = hsp;
		particle_set_scale(particle.highjumpcloud2, xscale, 1);
		create_particle(x, y, particle.highjumpcloud2, 0);
	}
	if (key_up && input_buffer_jump > 0 && !key_down && noisecrusher)
	{
		freefallstart = 0;
		railmomentum = false;
		if (place_meeting(x, y + 1, obj_railparent))
			railmomentum = true;
		scr_player_do_noisecrusher();
	}
	if (floor(image_index) == image_number - 1 && sprite_index == spr_ratballoonbounce)
	{
		image_index = image_number -1;
	}
	if grounded && !key_attack && vsp >= 0 && sprite_index == spr_wallbounce
	{
		state = states.normal;
		movespeed = abs(hsp);
	}
	if (sprite_index == spr_breakdancesuper || sprite_index == spr_poundcancel2 || sprite_index == spr_poundcancel1)
	{
		image_speed = (abs(movespeed) / 40) + 0.4;
	}
	else
		image_speed = 0.5;
	if punch_afterimage > 0
		punch_afterimage--;
	else
	{
		punch_afterimage = 5;
		create_noise_afterimage(x, y, sprite_index, image_index, xscale);
	}
	scr_dotaunt();
}
function scr_noise_machcancel_grab()
{
	image_speed = 0.5;
	move = key_left + key_right;
	if input_buffer_slap > 0 && !key_up
	{
		if (!shotgunAnim || move != 0)
		{
			input_buffer_shoot = 0;
			if move != 0
				xscale = move;
			input_buffer_slap = 0;
			key_slap = false;
			key_slap2 = false;
			jumpstop = true;
			with (instance_create(x, y, obj_crazyrunothereffect))
			image_xscale = other.xscale;
            if vsp > -5
				vsp = -5;
			if abs(movespeed) < 12
               movespeed = 12;
			state = states.mach2;
            sprite_index = spr_sidewayspin;
			image_index = 0;
			particle_set_scale(particle.jumpdust, xscale, 1);
			create_particle(x, y, particle.jumpdust, 0);
		}
		else
		{
			if savedmove != 0
				xscale = savedmove;
			scr_shotgunshoot();
		}
		return true;
	}
	return false;
}
function noisemachcancel()
{
	image_speed = 0.5;
	input_buffer_shoot = 0;
	if move != 0
		xscale = move;
	input_buffer_slap = 0;
	key_slap = false;
	key_slap2 = false;
	jumpstop = true;
	vsp = -5;
	state = states.mach2;
	with (instance_create(x, y, obj_crazyrunothereffect))
			image_xscale = other.xscale;
    if abs(movespeed) < 12
        movespeed = 12;
	sprite_index = spr_sidewayspin;
	image_index = 0;
	particle_set_scale(particle.jumpdust, xscale, 1);
	create_particle(x, y, particle.jumpdust, 0);
}
function scr_player_noisecrusher()
{
	image_speed = 0.35;
	if sprite_index == spr_noisecrusherland
	{
		hsp = 0;
		vsp = 0;
		movespeed = 0;
		if (floor(image_index) == image_number - 1)
			state = states.normal;
		exit;
	}
	if vsp > 0
		vsp += 0.5;
	hsp = movespeed * xscale;
	move = key_left + key_right;
	if move != 0
		movespeed = Approach(movespeed, move * 8 * xscale, 0.5);
	else
		movespeed = Approach(movespeed, 0, 0.5);
	if sprite_index != spr_noisecrusherstart && sprite_index != spr_noisecrusherland && sprite_index != spr_noisecrusherfall
	{
		sprite_index = spr_noisecrusherstart;
		image_index = 0;
	}
	if (sprite_index == spr_noisecrusherstart && floor(image_index) == image_number - 1)
		sprite_index = spr_noisecrusherfall;
	if ((key_attack2 || input_buffer_slap > 0) && !grounded)
	{
		image_speed = 0.5;
		input_buffer_shoot = 0;
		if move != 0
			xscale = move;
		input_buffer_slap = 0;
		key_slap = false;
		key_slap2 = false;
		jumpstop = true;
		vsp = -5;
		with (instance_create(x, y, obj_crazyrunothereffect))
			image_xscale = other.xscale;
        state = states.mach2;
		if movespeed < 12
            movespeed = 12;
		sprite_index = spr_sidewayspin;
		image_index = 0;
		particle_set_scale(particle.jumpdust, xscale, 1);
		create_particle(x, y, particle.jumpdust, 0);
		return true;
	}
	if (grounded && vsp > 0 && !place_meeting(x, y + vsp, obj_destructibles) && !place_meeting(x, y + 15, obj_destructibles) && !place_meeting(x, y + 15, obj_metalblock) && !place_meeting(x, y + vsp + 5, obj_metalblock) && !place_meeting(x, y + 15, obj_grindrail))
	{
		with (instance_create(x - 10, y, obj_parryeffect))
		{
			sprite_index = spr_ratdust;
			hspeed = -5;
		}
		with (instance_create(x + 10, y, obj_parryeffect))
		{
			image_xscale = -1;
			sprite_index = spr_ratdust;
			hspeed = 5;
		}
		with obj_baddie
		{
			if (shakestun && grounded && point_in_camera(x, y, view_camera[0]) && grounded && vsp > 0 && !invincible && groundpound)
			{
				state = states.stun;
				if stunned < 60
					stunned = 60;
				vsp = -11;
				image_xscale *= -1;
				hsp = 0;
				momentum = 0;
			}
		}
		with obj_camera
		{
			shake_mag = 10;
			shake_mag_acc = 30 / room_speed;
		}
		scr_soundeffect(sfx_groundpound)
		sprite_index = spr_noisecrusherland;
		image_index = 0;
	}
	scr_dotaunt();
}
function scr_player_do_noisecrusher()
{
	input_buffer_jump = 0;
	movespeed = hsp * xscale;
	state = states.duel+2;
	sprite_index = spr_noisecrusherstart;
	image_index = 0;
	vsp = -16;
}