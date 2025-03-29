if(global.oldhud){
	if (room == Realtitlescreen or room == rm_eggplantdisclaimer or room == rank_room or room == rm_levelselect or room == timesuproom or room == boss_room1 or room == characterselect or room == hub_loadingscreen)
	{
		visible = false
		sprite_index = obj_player1._spr_tv_off
	}
	else
		visible = true
	if(tvsprite==spr_tv_idle){
		tvsprite=spr_tvdefault
	}
	if (showtext == 1)
	{
	    xi = (500 + random_range(1, -1))
	    if (yi > 500)
	        yi -= 5
	}
	if (showtext == 0)
	{
	    xi = (500 + random_range(1, -1))
	    if (yi < 600)
	        yi += 1
	}
	if (!((obj_player.state == states.knightpep && obj_player.state == states.knightpepattack && obj_player.state == states.knightpepslopes)))
	    once = 0
	if (obj_player.y < 200 && obj_player.x > (room_width - 200)){
	    alpha = 0.5
	} else {
		alpha = 1
	}
	if (room == Realtitlescreen or room == rm_eggplantdisclaimer or room == rank_room or room == rm_levelselect or room == timesuproom or room == boss_room1 or room == characterselect or room == hub_loadingscreen){
	    alpha = 0
		tvsprite=spr_tvdefault
	}
	if instance_exists(obj_itspizzatime)
	{
	    image_speed = 0.25
	    message = "GET TO THE EXIT!!"
	    alarm[0] = 200
	    showtext = 1
	    tvsprite = spr_tvexit
	}
	else if (global.collect > global.arank && shownranka == 0)
	{
	    image_speed = 0
	    message = "YOU GOT ENOUGH FOR RANK A"
	    showtext = 1
	    alarm[0] = 200
	    tvsprite = spr_tvranka
	    shownranka = 1
	}
	else if (global.collect > global.brank && shownrankb == 0)
	{
	    image_speed = 0
	    message = "YOU GOT ENOUGH FOR RANK B"
	    showtext = 1
	    alarm[0] = 200
	    tvsprite = spr_tvrankb
	    shownrankb = 1
	}
	else if (global.collect > global.crank && shownrankc == 0)
	{
	    image_speed = 0
	    message = "YOU GOT ENOUGH FOR RANK C"
	    showtext = 1
	    alarm[0] = 200
	    tvsprite = spr_tvrankc
	    shownrankc = 1
	}
	else if (obj_player.sprite_index == obj_player.spr_levelcomplete)
	{
	    image_speed = 0.1
	    alarm[0] = 50
	    chose = 1
	    tvsprite = spr_tvclap
	    once = 1
	}
	else if (obj_player.state == states.hurt)
	{
	    image_speed = 0.1
	    showtext = 1
	    if (chose == 0)
	        message = choose("OW!", "OUCH!", "OH!", "WOH!")
	    alarm[0] = 50
	    chose = 1
	    tvsprite = spr_tvhurt
	    once = 1
	}
	else if (obj_player.state == states.timesup)
	{
	    alarm[0] = 50
	    image_speed = 0.1
	    tvsprite = spr_tvskull
	}
	else if (global.hurtcounter >= global.hurtmilestone && obj_player.character == "P")
	{
	    alarm[0] = 150
	    image_speed = 0.1
	    if (obj_player.character == "P")
	        character = "PEPPINO"
	    else
	        character = "THE NOISE"
	    message = (((("YOU HAVE HURT " + string(character)) + " ") + string(global.hurtmilestone)) + " TIMES...")
	    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
	        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
	    global.hurtmilestone += 3
	}
	else if (obj_player.state == states.skateboard)
	{
	    showtext = 1
	    message = "SWEET DUDE!!"
	    alarm[0] = 50
	    tvsprite = spr_tvrad
	    once = 1
	}
	else if (obj_player.state == states.slipnslide)
	{
	    image_speed = 0.1
	    showtext = 1
	    message = "OOPS!!"
	    alarm[0] = 50
	    tvsprite = spr_tvbanana
	    once = 1
	}
	else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo || tvsprite == spr_tvescape))
	{
	    tvsprite = spr_tvcombo
	    image_speed = 0
	    if (global.combo >= 4)
	        imageindexstore = 3
	    else
	        imageindexstore = (global.combo - 1)
	}
	else if (global.combotime == 0 && tvsprite == spr_tvcombo)
	{
	    tvsprite = spr_tvcomboresult
	    image_index = imageindexstore
	    alarm[0] = 50
	}
	if (obj_player.state == states.keyget)
	{
	    showtext = 1
	    message = "GOT THE KEY!"
	    alarm[0] = 50
	}
	if instance_exists(obj_noise_normalT1)
	{
	    if (obj_noise_normalT1.hspeed != 0 && global.panic == 0)
	    {
	        showtext = 1
	        message = "UH OH..."
	        alarm[0] = 50
	    }
	}
	exit;
}
if (room == Realtitlescreen or room == rm_eggplantdisclaimer or room == rank_room or room == rm_levelselect or room == timesuproom or room == boss_room1 or room == characterselect or room == hub_loadingscreen)
{
	visible = false
	sprite_index = obj_player1._spr_tv_off
}
else
	visible = true
if (instance_exists(obj_debugcontroller) && (!obj_debugcontroller.showhud))
	visible = false
image_speed = 0.35
if (targetgolf != noone && (!instance_exists(targetgolf)))
	targetgolf = -4
if (targetgolf != -4 && (!view_visible[1]))
{
	view_visible[1] = true
	view_enabled = true
}
if (bubblespr != -4 && bubblespr != _spr_tv_bubbleclosed)
{
	if (prompt != noone)
		prompt_buffer = 2
	bubbleindex += image_speed
	if (floor(bubbleindex) == sprite_get_number(bubblespr))
	{
		bubbleindex = 0
		switch bubblespr
		{
			case _spr_tv_bubbleopen:
				bubblespr = _spr_tv_bubble
				break
			case _spr_tv_bubbleclose:
				bubblespr = _spr_tv_bubbleclosed
				if (prompt == noone or prompt == "")
					bubblespr = noone
				break
		}

	}
}
switch state
{
	case states.normal:
		idlespr = obj_player1._spr_tv_idle
		if obj_player.isgustavo
		{
			idlespr = spr_tv_idleG
			if global.panic
				idlespr = spr_tv_escapeG
		}
		
		var _state = obj_player1.state
		if (_state == states.backbreaker or _state == states.chainsaw)
			_state = obj_player1.tauntstoredstate
		
		var _transfo = 1
		switch _state
		{
			case states.knightpep:
			case states.knightpepattack:
			case states.knightpepslopes:
				idlespr = obj_player1._spr_tv_knight
				break
			case states.bombpep:
				idlespr = obj_player1._spr_tv_bombpep
				break
			case states.fireass:
				idlespr = obj_player1._spr_tv_fireass
				if (obj_player1.sprite_index == obj_player1.spr_scaredjump1 or obj_player1.sprite_index == obj_player1.spr_scaredjump2)
					idlespr = obj_player1._spr_tv_scaredjump
				break
			case states.tumble:
				if (obj_player1.sprite_index == obj_player1.spr_tumble or obj_player1.sprite_index == obj_player1.spr_tumblestart or obj_player1.sprite_index == obj_player1.spr_tumbleend)
					idlespr = obj_player1._spr_tv_tumble
				break
			case states.firemouth:
				idlespr = obj_player1._spr_tv_firemouth
				break
			case states.ghost:
			case states.ghostpossess:
				idlespr = obj_player1._spr_tv_ghost
				break
			case states.stunned:
				if (obj_player1.sprite_index == obj_player1.spr_squished)
					idlespr = obj_player1._spr_tv_squished
				break
			case states.normal:
			case states.jump:
			case states.handstandjump:
			case states.crouch:
			case states.ladder:
				with (obj_player1)
				{
					if shotgunAnim
						other.idlespr = self._spr_tv_shotgun
					else if global.mort
						other.idlespr = self._spr_tv_mort
				}
				break
			case states.mort:
			case states.mortattack:
			case states.morthook:
			case states.mortjump:
			with (obj_player1)
				other.idlespr = self._spr_tv_mort
			break
			case states.freefallprep:
			case states.freefall:
			case states.freefallland:
				if obj_player1.shotgunAnim
					idlespr = obj_player1._spr_tv_shotgun
				break
			case states.pistol:
				if global.mort
					idlespr = obj_player1._spr_tv_mort
				break
			case states.shotgun:
			case states.shotgunfreefall:
			case states.shotgunjump:
			case states.shotgundash:
			case states.shotguncrouch:
			case states.shotguncrouchjump:
				idlespr = obj_player1._spr_tv_shotgun
				break
			case states.barrel:
				idlespr = obj_player1._spr_tv_barrel
				break
			case states.golf:
				idlespr = obj_player1._spr_tv_golf
				break
			case states.rocket:
				idlespr = obj_player1._spr_tv_rocket
				break
			case states.cheeseball:
				idlespr = obj_player1._spr_tv_cheeseball
				break
			case states.cheesepep:
			case states.cheesepepstick:
			case states.cheesepepstickside:
			case states.cheesepepstickup:
			case states.cheesepepjump:
			case states.cheesepepfling:
			case states.cheesepeplaunch:
				idlespr = obj_player1._spr_tv_cheesepep
				break
			case states.boxxedpep:
			case states.boxxedpepjump:
			case states.boxxedpepspin:
				idlespr = obj_player1._spr_tv_boxxedpep
				break
			case states.mach2:
			case states.climbwall:
			case states.machroll:
			case states.grind:
				if obj_player1.skateboarding
					idlespr = obj_player1._spr_tv_clown
				break
			default:
				_transfo = 0
				break
		}
		/*
		if (!obj_player1.ispeppino)
		{
			var spr = sprite_get_name(idlespr)
			spr = asset_get_index(concat(spr, "N"))
			if (spr > -1)
				idlespr = spr
		}*/
		if (!_transfo)
		{
			with (obj_player1)
			{
				if (mach4mode == 1)
					tv_do_expression(obj_player1._spr_tv_exprmach4)
				else if (state == states.mach3 or sprite_index == spr_mach3boost)
					tv_do_expression(obj_player1._spr_tv_exprmach3)
				else if (state == states.hurt)
					tv_do_expression(obj_player1._spr_tv_exprhurt)
				else if (state == states.ratmounthurt)
					tv_do_expression(spr_tv_hurtG)
				else if (global.combo >= 3 && (!obj_player.isgustavo))
					tv_do_expression(obj_player1._spr_tv_exprcombo)
				else if (global.stylethreshold >= 3 && (!obj_player.isgustavo))
					tv_do_expression(obj_player1._spr_tv_exprheat)
			}
		}
		switch sprite_index
		{
			case obj_player1._spr_tv_off:
				if visible
				{
					sprite_index = obj_player1._spr_tv_open
					image_index = 0
				}
				break
			case obj_player1._spr_tv_open:
				if (floor(image_index) == (image_number - 1))
					sprite_index = idlespr
				break
			case obj_player1._spr_tv_idle:
			//case spr_tv_idleN:
				if (idleanim > 0)
					idleanim--
				if (sprite_index != idlespr)
					sprite_index = idlespr
				if (idleanim <= 0 && floor(image_index) == (image_number - 1))
				{
					sprite_index = choose(obj_player1._spr_tv_idleanim1, obj_player1._spr_tv_idleanim2)
					/*if (!obj_player1.ispeppino)
					{
						if (sprite_index == spr_tv_idleanim1)
							sprite_index = spr_tv_idleanim1N
						if (sprite_index == spr_tv_idleanim2)
							sprite_index = spr_tv_idleanim2N
					}*/
					image_index = 0
				}
				break
			case obj_player1._spr_tv_idleanim1:
			case obj_player1._spr_tv_idleanim2:
				if (floor(image_index) == (image_number - 1))
				{
					sprite_index = idlespr
					idleanim = (240 + (60 * irandom_range(-1, 2)))
				}
				if (idlespr != obj_player1._spr_tv_idle /*&& idlespr != spr_tv_idleN*/)
					sprite_index = idlespr
				break
			default:
				sprite_index = idlespr
		}

		if (sprite_index != obj_player1._spr_tv_open)
		{
			if (!ds_list_empty(tvprompts_list))
			{
				var b = ds_list_find_value(tvprompts_list, 0)
				prompt_buffer = prompt_max
				if (b[0] != "" && b[0] != noone)
				{
					bubblespr = _spr_tv_bubbleopen
					bubbleindex = 0
					prompt = b[0]
					promptspd = b[3]
					promptx = promptxstart
				}
				else
				{
					if (bubblespr != -4 && bubblespr != _spr_tv_bubbleclosed)
						bubblespr = _spr_tv_bubbleclose
					if (bubblespr == _spr_tv_bubbleclosed)
						bubblespr = -4
					bubbleindex = 0
					promptx = promptxstart
					prompt = -4
				}
				if (b[1] == tvprompt.normal)
				{
					sprite_index = obj_player1._spr_tv_open
					image_index = 0
					tvsprite = b[2]
					if (!obj_player1.ispeppino)
					{
						spr = sprite_get_name(tvsprite)
						spr = asset_get_index(concat(spr, "N"))
						if (spr > -1)
							tvsprite = spr
					}
				}
				else
				{
					tvsprite = b[2]
					if (!obj_player1.ispeppino)
					{
						spr = sprite_get_name(tvsprite)
						spr = asset_get_index(concat(spr, "N"))
						if (spr > -1)
							tvsprite = spr
					}
					sprite_index = tvsprite
					image_index = 0
				}
				state = states.transitioncutscene
			}
			else
				bubblespr = -4
		}
		break
	case states.transitioncutscene:
		if (sprite_index == obj_player1._spr_tv_open && floor(image_index) == (image_number - 1))
			sprite_index = tvsprite
		if (sprite_index == tvsprite)
		{
			if (prompt_buffer > 0)
				prompt_buffer--
			else
			{
				promptx = promptxstart
				ds_list_delete(tvprompts_list, 0)
				state = states.normal
			}
		}
		break
	case states.tv_whitenoise:
		sprite_index = obj_player1._spr_tv_whitenoise
		if (noisebuffer > 0)
			noisebuffer--
		else
		{
			noisebuffer = noisemax
			if (expressionsprite != -4)
			{
				state = states.tv_expression
				sprite_index = expressionsprite
			}
			else
				state = states.normal
			image_index = 0
		}
		break
	case states.tv_expression:
		switch expressionsprite
		{
			case obj_player1._spr_tv_exprhurt:
				if (obj_player1.state != states.hurt)
				{
					if (expressionbuffer > 0)
						expressionbuffer--
					else
					{
						state = states.tv_whitenoise
						expressionsprite = -4
					}
				}
				break
			case spr_tv_hurtG:
				if (obj_player1.state != states.ratmounthurt)
				{
					if (expressionbuffer > 0)
						expressionbuffer--
					else
					{
						state = states.tv_whitenoise
						expressionsprite = -4
					}
				}
				break
			case obj_player1._spr_tv_exprcombo:
				if (global.combo < 3 or obj_player1.isgustavo)
				{
					state = states.tv_whitenoise
					expressionsprite = -4
					if (obj_player1.state == states.hurt)
						tv_do_expression(obj_player1._spr_tv_exprhurt)
				}
				break
			case obj_player1._spr_tv_exprcollect:
			case spr_tv_happyG:
				if (expressionbuffer > 0)
					expressionbuffer--
				else
				{
					state = states.tv_whitenoise
					expressionsprite = -4
				}
				break
			case obj_player1._spr_tv_exprmach3:
				with (obj_player1)
				{
					if (state != states.mach3 && (state != states.chainsaw or tauntstoredstate != states.mach3) && sprite_index != spr_mach3boost && mach4mode == 0)
					{
						other.state = states.tv_whitenoise
						other.expressionsprite = -4
					}
				}
				break
			case obj_player1._spr_tv_exprmach4:
				with (obj_player1)
				{
					if (mach4mode == 0)
					{
						other.state = states.tv_whitenoise
						other.expressionsprite = -4
					}
				}
				break
			case obj_player1._spr_tv_exprheat:
				_transfo = 0
				with (obj_player1)
				{
					if (!scr_transformationcheck())
						_transfo = 1
					if isgustavo
						_transfo = 1
				}
				if (global.stylethreshold < 3 or _transfo)
				{
					state = states.tv_whitenoise
					expressionsprite = -4
				}
				break
		}

		if (!ds_list_empty(tvprompts_list))
		{
			state = states.tv_whitenoise
			expressionsprite = -4
		}
		break
}

var change_pos = 0
if (obj_player.x > (room_width - 224) && obj_player.y < 187)
	change_pos = 1
if (bubblespr != -4 && obj_player.x > 316 && obj_player.y < 101)
	change_pos = 1
var spd = 15
if change_pos
	hud_posY = Approach(hud_posY, -300, spd)
else
	hud_posY = Approach(hud_posY, 0, spd)
pizzaface_index += 0.35
hand_index += 0.35
johnface_index += 0.35
if (global.panic && global.fill > 0)
{
	showtime_buffer = 100
	if (!instance_exists(obj_ghostcollectibles))
		timer_y = Approach(timer_y, timer_ystart, 1)
	else
		timer_y = Approach(timer_y, (timer_ystart + 212), 4)
}
else if global.panic
{
	if (pizzaface_sprite == spr_timer_pizzaface1)
	{
		pizzaface_sprite = spr_timer_pizzaface2
		pizzaface_index = 0
	}
	else if (pizzaface_sprite == spr_timer_pizzaface2)
	{
		if (floor(pizzaface_index) == (sprite_get_number(pizzaface_sprite) - 1))
		{
			pizzaface_sprite = spr_timer_pizzaface3
			pizzaface_index = 0
		}
	}
	else if (showtime_buffer > 0)
		showtime_buffer--
	else
		timer_y = Approach(timer_y, (timer_ystart + 212), 1)
}
else
{
	pizzaface_sprite = spr_timer_pizzaface1
	hand_sprite = spr_timer_hand1
	timer_y = (timer_ystart + 212)
}
if (global.panic && global.fill < (chunkmax / 5))
	hand_sprite = spr_timer_hand2
barfill_x -= 0.2
if (barfill_x < -173)
	barfill_x = 0
if (pizzaface_index > (sprite_get_number(pizzaface_sprite) - 1))
	pizzaface_index = frac(pizzaface_index)
if (hand_index > (sprite_get_number(hand_sprite) - 1))
	hand_index = frac(hand_index)
if (johnface_index > (sprite_get_number(johnface_sprite) - 1))
	johnface_index = frac(johnface_index)
combo_posX = Wave(-5, 5, 2, 20)
if (global.combotime > 0 && global.combo != 0)
{
	switch combo_state
	{
		case 0:
			combo_posY += combo_vsp
			combo_vsp += 0.5
			if (combo_posY > 20)
				combo_state++
			break
		case 1:
			combo_posY = lerp(combo_posY, 0, 0.05)
			if (combo_posY < 1)
			{
				combo_posY = 0
				combo_vsp = 0
				combo_state++
			}
			break
		case 2:
			if (global.combotime < 30)
			{
				combo_posY += combo_vsp
				if (combo_vsp < 20)
					combo_vsp += 0.5
				if (combo_posY > 0)
				{
					combo_posY = 0
					combo_vsp = -1
					if (global.combotime < 15)
						combo_vsp = -2
				}
			}
			else
				combo_posY = Approach(combo_posY, 0, 10)
			break
	}

}
else
{
	combo_posY = Approach(combo_posY, -500, 5)
	combo_vsp = 0
	combo_state = 0
}
combofill_index += 0.35
if (combofill_index > (sprite_get_number(obj_player1.combobubblefillspr) - 1))
	combofill_index = frac(combofill_index)
