if (is_bossroom() or room == editor_room)
	exit;
if(instance_exists(obj_fakeeditor)){
	if(!obj_fakeeditor.in_play_mode){
		exit;
	}
}
if(instance_exists(player)){
	key_inv_x = player.key_inv_x
	key_inv_y = player.key_inv_y
	hud_x = player.hud_x
	hud_y = player.hud_y
}
if global.kungfu
{
	draw_sprite(spr_pizzahealthbar, (global.hp - (sprite_get_number(spr_pizzahealthbar) -1 )) * -1, hp_hud_x, hp_hud_y) // should be dynamic now if anyone needs it.
	/*
	if (global.hp == 8)
		draw_sprite(spr_pizzahealthbar, 0, hp_x, hp_y)
	else if (global.hp == 7)
		draw_sprite(spr_pizzahealthbar, 1, hp_x, hp_y)
	else if (global.hp == 6)
		draw_sprite(spr_pizzahealthbar, 2, hp_x, hp_y)
	else if (global.hp == 5)
		draw_sprite(spr_pizzahealthbar, 3, hp_x, hp_y)
	else if (global.hp == 4)
		draw_sprite(spr_pizzahealthbar, 4, hp_x, hp_y)
	else if (global.hp == 3)
		draw_sprite(spr_pizzahealthbar, 5, hp_x, hp_y)
	else if (global.hp == 2)
		draw_sprite(spr_pizzahealthbar, 6, hp_x, hp_y)
	else if (global.hp == 1)
		draw_sprite(spr_pizzahealthbar, 7, hp_x, hp_y)
	else if (global.hp == 0)
		draw_sprite(spr_pizzahealthbar, 8, hp_x, hp_y)
	*/
}
if(global.oldhud){
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0)
	}
	if (obj_player1.state != states.gameover)
	{
		var headspr = obj_player1.spr_HUD
		if(global.panic || global.snickchallenge) headspr = obj_player1.spr_HUDpanic
		if(obj_player1.angry) headspr = obj_player1.spr_HUD3hp
		if(global.minutes == 0 && global.seconds == 0) headspr = obj_player1.spr_HUD1hp
		switch(obj_player1.state)
		{
			case states.knightpep:
			case states.knightpepslopes:
				headspr = (obj_player1.sprite_index == obj_player1.spr_knightpepthunder) ? obj_player1.spr_HUDthunder : ((obj_player1.sprite_index == obj_player1.spr_knightpepstart) ? obj_player1.spr_HUD: obj_player1.spr_HUDknight)
			break
			case states.Sjumpland:
				headspr = obj_player1.spr_HUDstun
			break
			case states.freefallland:
				headspr = (shake_mag > 0) ? obj_player1.spr_HUDstun : obj_player1.spr_HUD
			break
			case states.hurt:
			case states.timesup:
				headspr = obj_player1.spr_HUDhurt
			break
			case states.bombpep:
				headspr = (obj_player1.sprite_index == obj_player1.spr_bombpepintro || obj_player.sprite_index == obj_player1.spr_bombpeprunabouttoexplode || obj_player.sprite_index == obj_player1.spr_bombpeprun) ? obj_player1.spr_HUDscream : obj_player1.spr_HUDhurt
			break
			case states.bossintro:
				headspr = (obj_player1.sprite_index == obj_player1.spr_levelcomplete) ? obj_player1.spr_HUDhurt : obj_player1.spr_HUDhappy
			break
			case states.keyget:
			case states.smirk:
			case states.gottreasure:
				headspr = obj_player1.spr_HUDhappy
			break
			case states.tumble:
				headspr = obj_player1.spr_HUDrolling
			break
			case states.mach1:
			case states.chainsaw:
			case states.freefallprep:
			case states.freefall:
			case states.tackle:
			case states.Sjump:
			case states.slam:
			case states.Sjumpprep:
			case states.grab:
			case states.punch:
			case states.backbreaker:
			case states.backkick:
			case states.uppunch:
			case states.shoulder:
				headspr = obj_player1.spr_HUDmach1
			break
			case states.mach2:
			case states.climbwall:
			case states.handstandjump:
			case states.superslam:
				headspr = obj_player1.spr_HUDmach2
			break
			case states.machslide:
				headspr = (obj_player1.sprite_index == obj_player1.spr_mach3boost) ? obj_player1.spr_HUDmach3 : obj_player1.spr_HUDmach2
			break
			case states.mach3:
				headspr = (obj_player1.sprite_index == obj_player1.spr_crazyrun) ? obj_player1.spr_HUDmach4 : obj_player1.spr_HUDmach3
			break
		}
		if(headspr != obj_player1.spr_HUDthunder && headspr != obj_player1.spr_HUDknight && headspr != obj_player1.spr_HUDbombend)
		{
			if(global.combo >= menacing_combo_count) headspr = obj_player1.spr_HUDmenacing
			if(instance_exists(obj_itspizzatime)) headspr = obj_player1.spr_HUDscream
		}
		draw_head_sprite(headspr)
		if(global.usepaletteshaders){
			shader_reset()
		}
		if(obj_player1.speedbarvisible)
		{
		    if (obj_player1.movespeed < 2.4 || (!((obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))))
		        draw_sprite_ext(obj_player1.speedbarspr, 0, 125, 140, 1, 1, 1, c_white, alpha)
		    else if (obj_player1.movespeed >= 2.4 && obj_player1.movespeed < 4.8 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
		        draw_sprite_ext(obj_player1.speedbarspr, 1, 125, 140, 1, 1, 1, c_white, alpha)
		    else if (obj_player1.movespeed >= 4.8 && obj_player1.movespeed < 7.2 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
		        draw_sprite_ext(obj_player1.speedbarspr, 2, 125, 140, 1, 1, 1, c_white, alpha)
		    else if (obj_player1.movespeed >= 7.2 && obj_player1.movespeed < 9.6 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
		        draw_sprite_ext(obj_player1.speedbarspr, 3, 125, 140, 1, 1, 1, c_white, alpha)
		    else if (obj_player1.movespeed >= 9.6 && obj_player1.movespeed < 12 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
		        draw_sprite_ext(obj_player1.speedbarspr, 4, 125, 140, 1, 1, 1, c_white, alpha)
		    else if (obj_player1.movespeed >= 12 && (obj_player1.state == states.mach1 || obj_player1.state == states.mach2 || obj_player1.state == states.mach3 || obj_player1.state == states.climbwall || obj_player1.state == states.machslide || obj_player1.state == states.machroll || obj_player1.state == states.handstandjump))
		        draw_sprite_ext(obj_player1.speedbarmaxspr, -1, 125, 140, 1, 1, 1, c_white, alpha)
		}
	    if (obj_player1.y < 200 && obj_player1.x < 200)
	        alpha = 0.5
	    else
	        alpha = 1
	    draw_set_font(global.bigfont)
	    draw_set_halign(fa_center)
	    draw_set_color(c_white)
	    if (global.panic == 1 || global.snickchallenge == 1)
	    {
			var minutes = 0;
			for (var seconds = ceil(global.fill / 12); seconds > 59; seconds -= 60)
				minutes++;
			if (seconds < 10)
				seconds = concat("0", seconds);
			else
				seconds = string(seconds);
	        if (minutes < 1)
	            draw_set_color(c_red)
	        else
	            draw_set_color(c_white)
	        draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(minutes) + ":") + string(seconds))))
	        
	    }
	    if (global.key_inv)
	        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
	    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)
	    draw_set_color(c_white) // fix health color bug
		if (obj_player1.usehp)
			draw_text((200 + healthshake), (125 + healthshake), global.playerhealth)
		/*var _score = global.collect
		var hud_xx = (121 + irandom_range((-collect_shake), collect_shake))
		var hud_yy = ((70 + irandom_range((-collect_shake), collect_shake)) + hud_posY)
		var rx = (hud_xx + rank_xoffset)
		var ry = (hud_yy + rank_yoffset)
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
		}*/

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
		var sw = sprite_get_width(obj_player1.heatmeter_fillspr)
		var sh = sprite_get_height(obj_player1.heatmeter_fillspr)
	}
	var b = global.stylemultiplier
	var hud_xx = (hud_x + irandom_range((-collect_shake), collect_shake))
	var hud_yy = ((hud_y + irandom_range((-collect_shake), collect_shake)) + hud_posY)
	if (global.heatmetervisible) {
		draw_sprite_part(obj_player1.heatmeter_fillspr, pizzascore_index, 0, 0, (sw * b), sh, (hud_xx - 95), (hud_yy + 24))
	}
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
		pal_swap_set(obj_player1.heatmeter_palettespr, global.stylethreshold, 0)
	}
	if (global.heatmetervisible) {
		draw_sprite_ext(obj_player1.heatmeterspr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	}
	if(global.usepaletteshaders){
		shader_reset()
	}
	draw_sprite_ext(obj_player1.pizzascorespr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	var _score = global.collect
	if global.coop
		_score += global.collectN
	if (_score >= global.crank)
		draw_sprite_ext(obj_player1.pizzascore_pepperspr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.brank)
		draw_sprite_ext(obj_player1.pizzascore_pepperonispr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.arank)
		draw_sprite_ext(obj_player1.pizzascore_olivespr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	if (_score >= global.srank)
		draw_sprite_ext(obj_player1.pizzascore_shroomspr, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
	var rx = (hud_xx + rank_xoffset)
	var ry = (hud_yy + rank_yoffset)
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
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
	}
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
	if(global.usepaletteshaders){
		shader_reset()
	}
	draw_set_font(global.bigfont)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	if (obj_player1.usehp)
		draw_text((200 + healthshake), (125 + healthshake), global.playerhealth)
	draw_text(window_get_height() - 50, window_get_width() - 200, "Lap: " + string(global.laps))
	if(global.oldsprites){
		draw_sprite_ext(spr_inv, -1, key_inv_x, key_inv_y, 1, 1, 1, c_white, alpha)
		if global.key_inv
			draw_sprite_ext(spr_key, -1, key_inv_x, key_inv_y, 1, 1, 1, c_white, alpha)
	}
}
