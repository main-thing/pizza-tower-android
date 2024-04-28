if (is_bossroom() or room == editor_room)
	exit;
if(instance_exists(obj_fakeeditor)){
	if(!obj_fakeeditor.in_play_mode){
		exit;
	}
}
if global.kungfu
{
	if (global.hp == 8)
		draw_sprite(spr_pizzahealthbar, 0, 190, 70)
	else if (global.hp == 7)
		draw_sprite(spr_pizzahealthbar, 1, 190, 70)
	else if (global.hp == 6)
		draw_sprite(spr_pizzahealthbar, 2, 190, 70)
	else if (global.hp == 5)
		draw_sprite(spr_pizzahealthbar, 3, 190, 70)
	else if (global.hp == 4)
		draw_sprite(spr_pizzahealthbar, 4, 190, 70)
	else if (global.hp == 3)
		draw_sprite(spr_pizzahealthbar, 5, 190, 70)
	else if (global.hp == 2)
		draw_sprite(spr_pizzahealthbar, 6, 190, 70)
	else if (global.hp == 1)
		draw_sprite(spr_pizzahealthbar, 7, 190, 70)
	else if (global.hp == 0)
		draw_sprite(spr_pizzahealthbar, 8, 190, 70)
}
if(global.oldhud){
	if (obj_player1.state != states.gameover)
	{
		if ((obj_player1.character == "V"))
	    {
	        if (((healthshaketime > 0) && (playerhealthup == 1)) || (obj_player1.sprite_index == spr_playerV_keydoor) || (obj_player1.state == states.keyget || (obj_player1.state == states.gottreasure)))
	            draw_sprite_ext(spr_playerV_happyHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	        else if ((obj_player1.state == states.mach3))
	            draw_sprite_ext(spr_playerV_machHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	        else if (((healthshaketime > 0) && (playerhealthup == 0)) || (obj_player1.state == states.hurt))
	            draw_sprite_ext(spr_playerV_hurtHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	        else if ((global.panic == 1))
	            draw_sprite_ext(spr_playerV_panicHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	        else if ((obj_player1.angry == 1))
	            draw_sprite_ext(spr_playerV_angryHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	        else
	            draw_sprite_ext(spr_playerV_normalHUD, -1, 125, 100, 1, 1, 1, c_white, other.alpha)
	    }
	    if (obj_player1.character == "P" && obj_player1.ispeppino)
	    {
	        if (obj_player1.sprite_index == spr_knightpep_thunder)
	            draw_sprite_ext(spr_pepinoHUDthunder, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index != spr_knightpep_start && (obj_player1.state == states.knightpep || obj_player1.state == states.knightpepslopes))
	            draw_sprite_ext(spr_pepinoHUDknight, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_bombpep_end)
	            draw_sprite_ext(spr_pepinoHUDbombend, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (instance_exists(obj_itspizzatime) || obj_player1.sprite_index == spr_bombpep_intro || obj_player1.sprite_index == spr_bombpep_runabouttoexplode || obj_player1.sprite_index == spr_bombpep_run || obj_player1.sprite_index == spr_player_fireass)
	            draw_sprite_ext(spr_pepinoHUDscream, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.Sjumpland || (obj_player1.state == states.freefallland && shake_mag > 0))
	            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_player_victory || obj_player1.state == states.keyget || obj_player1.state == states.smirk || obj_player1.state == states.gottreasure || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_levelcomplete))
	            draw_sprite_ext(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_player_machroll || obj_player1.sprite_index == spr_player_tumble)
	            draw_sprite_ext(spr_pepinoHUDrolling, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (global.combo >= 3)
	            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach1 || obj_player1.state == states.chainsaw || obj_player1.state == states.freefallprep || obj_player1.state == states.freefall || obj_player1.state == states.tackle || obj_player1.state == states.Sjump || obj_player1.state == states.slam || obj_player1.state == states.Sjumpprep || obj_player1.state == states.grab || obj_player1.state == states.punch || obj_player1.state == states.backbreaker || obj_player1.state == states.backkick || obj_player1.state == states.uppunch || obj_player1.state == states.shoulder)
	            draw_sprite_ext(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach2 || obj_player1.sprite_index == spr_player_dive || obj_player1.sprite_index == spr_player_machslideboost || obj_player1.state == states.climbwall || obj_player1.state == states.handstandjump || obj_player1.state == states.superslam)
	            draw_sprite_ext(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach3 && obj_player1.sprite_index == spr_player_crazyrun)
	            draw_sprite_ext(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach3 || obj_player1.sprite_index == spr_player_machslideboost3)
	            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.hurt || obj_player1.sprite_index == spr_bombpep_end || obj_player1.sprite_index == spr_player_fireassend || obj_player1.state == states.timesup || obj_player1.state == states.bombpep || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_bossintro) || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_idle))
	            draw_sprite_ext(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.angry == 1)
	            draw_sprite_ext(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_player_hurtidle || obj_player1.sprite_index == spr_player_hurtwalk)
	            draw_sprite_ext(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (global.panic == 1 || global.snickchallenge == 1)
	            draw_sprite_ext(spr_pepinoHUDpanic, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_shotgun_pullout)
	            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else
	            draw_sprite_ext(spr_pepinoHUD, -1, 125, 100, 1, 1, 1, c_white, alpha)
	    }
	    if (obj_player1.character == "S")
	        draw_sprite_ext(spr_snickHUD, -1, 125, 60, 1, 1, 1, c_white, alpha)
	    if (obj_player1.character == "N" || (obj_player1.character == "P" && !obj_player1.ispeppino) )
	    {
	        if (!((obj_player1.state == states.mach1 || obj_player1.state == states.gottreasure || obj_player1.state == states.bossintro || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_bossintro) || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_idle) || obj_player1.state == states.bombpep || obj_player1.state == states.machroll || obj_player1.state == states.timesup || obj_player1.state == states.chainsaw || obj_player1.state == states.shotgun || obj_player1.state == states.slam || obj_player1.state == states.Sjumpland || obj_player1.state == states.grab || obj_player1.state == states.punch || obj_player1.state == states.backbreaker || obj_player1.state == states.backkick || obj_player1.state == states.uppunch || obj_player1.state == states.shoulder || obj_player1.state == states.tackle || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_levelcomplete) || (obj_player1.state == states.freefallland && shake_mag > 0) || obj_player1.state == states.freefallprep || obj_player1.state == states.freefall || obj_player1.state == states.Sjump || obj_player1.state == states.Sjumpprep || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.smirk || obj_player1.state == states.hurt || obj_player1.state == states.keyget || obj_player1.sprite_index == spr_player_victory || obj_player1.state == states.punch)))
	        {
	            if (global.playerhealth == 1)
	                draw_sprite_ext(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 1, c_white, alpha)
	            else
	                draw_sprite_ext(spr_noiseHUD_idle, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        }
	        else if (obj_player1.state == states.Sjumpland || (obj_player1.state == states.freefallland && shake_mag > 0))
	            draw_sprite_ext(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_player_victory || obj_player1.state == states.keyget || obj_player1.state == states.smirk || obj_player1.state == states.gottreasure || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_levelcomplete))
	            draw_sprite_ext(spr_noiseHUD_happy, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach1 || obj_player1.state == states.shotgun || obj_player1.state == states.chainsaw || obj_player1.state == states.freefallprep || obj_player1.state == states.freefall || obj_player1.state == states.tackle || obj_player1.state == states.Sjump || obj_player1.state == states.slam || obj_player1.state == states.Sjumpprep || obj_player1.state == states.grab || obj_player1.state == states.punch || obj_player1.state == states.backbreaker || obj_player1.state == states.backkick || obj_player1.state == states.uppunch || obj_player1.state == states.shoulder)
	            draw_sprite_ext(spr_noiseHUD_mach1, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach2)
	            draw_sprite_ext(spr_noiseHUD_mach2, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.state == states.mach3 || obj_player1.state == states.machroll)
	            draw_sprite_ext(spr_noiseHUD_mach3, -1, 125, 100, 1, 1, 1, c_white, alpha)
	       else if (obj_player1.state == states.hurt || obj_player1.sprite_index == spr_bombpep_end || obj_player1.sprite_index == spr_player_fireassend || obj_player1.state == states.timesup || obj_player1.state == states.bombpep || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_bossintro) || (obj_player1.state == states.bossintro && obj_player1.sprite_index == spr_player_idle))
	            draw_sprite_ext(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.angry == 1)
	            draw_sprite_ext(spr_noiseHUD_angry, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_player_hurtidle || obj_player1.sprite_index == spr_player_hurtwalk)
	            draw_sprite_ext(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (global.panic == 1 || global.snickchallenge == 1)
	            draw_sprite_ext(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 1, c_white, alpha)
	        else if (obj_player1.sprite_index == spr_shotgun_pullout)
	            draw_sprite_ext(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 1, c_white, alpha)
	    }
	    if (obj_player1.movespeed < 2.4 || (!((obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))))
	        draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 1, c_white, alpha)
	    else if (obj_player1.movespeed >= 2.4 && obj_player1.movespeed < 4.8 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
	        draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 1, c_white, alpha)
	    else if (obj_player1.movespeed >= 4.8 && obj_player1.movespeed < 7.2 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
	        draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 1, c_white, alpha)
	    else if (obj_player1.movespeed >= 7.2 && obj_player1.movespeed < 9.6 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
	        draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 1, c_white, alpha)
	    else if (obj_player1.movespeed >= 9.6 && obj_player1.movespeed < 12 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
	        draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 1, c_white, alpha)
	    else if (obj_player1.movespeed >= 12 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
	        draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 1, c_white, alpha)
	    if (obj_player1.y < 200 && obj_player1.x < 200)
	        alpha = 0.5
	    else
	        alpha = 1
	    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
	    draw_set_font(font)
	    draw_set_halign(fa_center)
	    draw_set_color(c_white)
	    if (global.panic == 1 || global.snickchallenge == 1)
	    {
	        if (global.seconds < 10)
	        {
	            if (global.minutes < 1)
	                draw_set_color(c_red)
	            else
	                draw_set_color(c_white)
	            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":0") + string(global.seconds))))
	        }
	        else if (global.seconds >= 10)
	        {
	            if (global.minutes < 1)
	                draw_set_color(c_red)
	            else
	                draw_set_color(c_white)
	            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":") + string(global.seconds))))
	        }
	    }
	    if (global.key_inv)
	        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
	    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)
		if (obj_player1.character == "V")
			draw_text((200 + healthshake), (125 + healthshake), global.playerhealth)
		draw_text(window_get_height() - 50, window_get_width() - 200, "Lap: " + string(global.laps))
		var _score = global.collect
		var hud_xx = (121 + irandom_range((-collect_shake), collect_shake))
		var hud_yy = ((70 + irandom_range((-collect_shake), collect_shake)) + hud_posY)
		var rx = (hud_xx + 142)
		var ry = (hud_yy - 22)
		var rank_ix = 0
		if (_score >= global.srank && !global.combodropped)
			rank_ix = 5
		else if (_score >= global.srank)
			rank_ix = 4
		else if (_score >= global.arank)
			rank_ix = 3
		else if (_score >= global.brank)
			rank_ix = 2
		else if (_score >= global.crank)
			rank_ix = 1
		if (previousrank != rank_ix)
		{
			previousrank = rank_ix
			rank_scale = 3
		}
		rank_scale = Approach(rank_scale, 1, 0.2)
		var spr_w = sprite_get_width(spr_ranks_hudfill)
		var spr_h = sprite_get_height(spr_ranks_hudfill)
		var spr_xo = sprite_get_xoffset(spr_ranks_hudfill)
		var spr_yo = sprite_get_yoffset(spr_ranks_hudfill)
		var perc = 0
		switch rank_ix
		{
			case 4:
				perc = 1
				break
			case 3:
				perc = ((_score - global.arank) / (global.srank - global.arank))
				break
			case 2:
				perc = ((_score - global.brank) / (global.arank - global.brank))
				break
			case 1:
				perc = ((_score - global.crank) / (global.brank - global.crank))
				break
			default:
				perc = (_score / global.crank)
		}

	}
	exit;
}
if (obj_player.state != states.gameover)
{
	if (obj_player.x < 250 && obj_player.y < 169)
		hud_posY = Approach(hud_posY, -300, 15)
	else
		hud_posY = Approach(hud_posY, 0, 15)
	pizzascore_index += (0 + (0.25 * global.stylethreshold))
	if (pizzascore_index > (pizzascore_number - 1))
		pizzascore_index = (0 + frac(pizzascore_index))
	if (global.stylethreshold <= 0)
	{
		if (floor(pizzascore_index) != 0)
			pizzascore_index += 0.35
		else
			pizzascore_index = 0
	}
	if (global.heatmetervisible) {
	var sw = sprite_get_width(spr_heatmeter_fill)
	var sh = sprite_get_height(spr_heatmeter_fill)
	}
	var b = global.stylemultiplier
	var hud_xx = (121 + irandom_range((-collect_shake), collect_shake))
	var hud_yy = ((70 + irandom_range((-collect_shake), collect_shake)) + hud_posY)
	if (global.heatmetervisible) {
		draw_sprite_part(spr_heatmeter_fill, pizzascore_index, 0, 0, (sw * b), sh, (hud_xx - 95), (hud_yy + 24))
	}
	//shader_set(global.Pal_Shader)
	//pal_swap_set(98, global.stylethreshold, 0)
	if (global.heatmetervisible) {
		draw_sprite_ext(spr_heatmeter, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	}
	//shader_reset()
	draw_sprite_ext(spr_pizzascore, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	var _score = global.collect
	if global.coop
		_score += global.collectN
	if (_score >= global.crank)
		draw_sprite_ext(spr_pizzascore_pepper, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.brank)
		draw_sprite_ext(spr_pizzascore_pepperoni, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.arank)
		draw_sprite_ext(spr_pizzascore_olive, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.srank)
		draw_sprite_ext(spr_pizzascore_shroom, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	var rx = (hud_xx + 142)
	var ry = (hud_yy - 22)
	var rank_ix = 0
	if (_score >= global.srank && !global.combodropped)
		rank_ix = 5
	else if (_score >= global.srank)
		rank_ix = 4
	else if (_score >= global.arank)
		rank_ix = 3
	else if (_score >= global.brank)
		rank_ix = 2
	else if (_score >= global.crank)
		rank_ix = 1
	if (previousrank != rank_ix)
	{
		previousrank = rank_ix
		rank_scale = 3
	}
	rank_scale = Approach(rank_scale, 1, 0.2)
	var spr_w = sprite_get_width(spr_ranks_hudfill)
	var spr_h = sprite_get_height(spr_ranks_hudfill)
	var spr_xo = sprite_get_xoffset(spr_ranks_hudfill)
	var spr_yo = sprite_get_yoffset(spr_ranks_hudfill)
	var perc = 0
	switch rank_ix
	{
		case 4:
			perc = 1
			break
		case 3:
			perc = ((_score - global.arank) / (global.srank - global.arank))
			break
		case 2:
			perc = ((_score - global.brank) / (global.arank - global.brank))
			break
		case 1:
			perc = ((_score - global.crank) / (global.brank - global.crank))
			break
		default:
			perc = (_score / global.crank)
	}

	var t = (spr_h * perc)
	var top = (spr_h - t)
	if (!global.showrank) {
		draw_sprite_ext(spr_ranks_hudeggplant, rank_ix, rx, ry, rank_scale, rank_scale, 0, c_white, 1)
	} else {
		draw_sprite_ext(spr_ranks_hud, rank_ix, rx, ry, rank_scale, rank_scale, 0, c_white, 1)
		if(perc != 1){
			draw_sprite_part(spr_ranks_hudfill, rank_ix, 0, top, spr_w, (spr_h - top), (rx - spr_xo), ((ry - spr_yo) + top))
		}
	}
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_font(global.collectfont)
	var text_y = 0
	switch floor(pizzascore_index)
	{
		case 1:
		case 2:
		case 3:
			text_y = 1
			break
		case 5:
		case 10:
			text_y = -1
			break
		case 6:
		case 9:
			text_y = -2
			break
		case 7:
			text_y = -3
			break
		case 8:
			text_y = -5
			break
	}

	var cs = 0
	with (obj_comboend)
		cs += comboscore
	var sc = ((_score - global.comboscore) - cs)
	var str = string(sc)
	var num = string_length(str)
	var w = string_width(str)
	var xx = (hud_xx - (w / 2))
	if (lastcollect != sc)
	{
		color_array = array_create(num, 0)
		for (var i = 0; i < array_length(color_array); i++)
			color_array[i] = choose(irandom(3))
		lastcollect = sc
	}
	//shader_set(global.Pal_Shader)
	draw_set_alpha(alpha)
	for (i = 0; i < num; i++)
	{
		var yy = (((i + 1) % 2) == 0 ? -5 : 0)
		var c = color_array[i]
		pal_swap_set(spr_font_palette, c, 0)
		draw_text(xx, (((hud_yy - 56) + text_y) + yy), string_char_at(str, (i + 1)))
		xx += (w / num)
	}
	draw_set_alpha(1)
	//shader_reset()
	draw_set_font(global.bigfont)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	if (obj_player1.character == "V")
		draw_text((200 + healthshake), (125 + healthshake), global.playerhealth)
	draw_text(window_get_height() - 50, window_get_width() - 200, "Lap: " + string(global.laps))
	if(global.oldsprites){
		draw_sprite_ext(spr_inv, -1, 41, 150, 1, 1, 1, c_white, alpha)
		if global.key_inv
			draw_sprite_ext(spr_key, -1, 41, 150, 1, 1, 1, c_white, alpha)
	}
}
