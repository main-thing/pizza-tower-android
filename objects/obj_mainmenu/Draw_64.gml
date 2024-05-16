if(!newstuff && !credits){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_set_font(subtextfont)
	draw_text(100, 520, "PORTED BY MAIN_THING")
	draw_set_font(titlefont)
	draw_text(display_get_gui_width() / 2, 350, "LEVEL SELECT")
	draw_text(display_get_gui_width() / 2, 390, "WHATS NEW")
	draw_text(display_get_gui_width() / 2, 430, "CREDITS")
	draw_text(display_get_gui_width() / 2, 470, "DISCORD")
	cursorindex += 0.35
	if cursorindex > sprite_get_number(spr_cursor)
		cursorindex = frac(cursorindex)
	draw_sprite(spr_cursor, cursorindex, 320, (350 + (selected_option * 40)))
} else {
	if(newstuff){
		draw_set_halign(fa_center)
		draw_set_valign(fa_left)
		draw_set_color(c_white)
		draw_set_font(titlefont)
		draw_text(display_get_gui_width() / 2, 50 + stringoffset, "NEW STUFF")
		draw_set_font(subtextfont)
		/*
		var i = 0
		var previndex_1 = 0
		var previndex_2 = 0
		*/
		var tempstring = textstring
		/*if string_count("[",textstring) == string_count("]",textstring){	
			while(i < string_count("[",textstring)){
				previndex_1 = string_pos_ext("[",textstring,previndex_1)
				previndex_2 = string_pos_ext("]",textstring,previndex_2)
				//show_message(string_copy(textstring, previndex_1 + 1, previndex_2 - previndex_1 - 1) + "\n previndex_2:" + string(previndex_2) + "\n previndex_1:" + string(previndex_1))
				draw_sprite(asset_get_index(string_copy(textstring,	previndex_1 + 1, previndex_2 - previndex_1 - 1)) ,0 , string_width(tempstring) * 5, 0)
				tempstring = string_delete(textstring, previndex_1, previndex_2 - previndex_1)
				i++
			}
		}*/
		draw_set_halign(fa_left)
		draw_text(50, 100 + stringoffset, string_upper(tempstring))
	}
	if(credits){
		draw_set_halign(fa_center)
		draw_set_valign(fa_left)
		draw_set_color(c_white)
		draw_set_font(titlefont)
		draw_text(display_get_gui_width() / 2, 50 + stringoffset, "CREDITS")
		draw_set_font(subtextfont2)
		draw_text(display_get_gui_width() / 2, 140, "TOUR DE PIZZA: FOR PIZZA TOWER")
		draw_sprite(mcpigicon, 0, display_get_gui_width() / 2 - sprite_get_width(mcpigicon) + mcpigiconoffsetx, 140 + mcpigiconoffsety)
		draw_text(display_get_gui_width() / 2, 220, "TNG: SUGGESTIONS ASSETS AND LOGO")
		draw_sprite(tngicon, 0, display_get_gui_width() / 2 - sprite_get_width(tngicon) + tngiconoffsetx, 220 + tngiconoffsety)
		draw_text(display_get_gui_width() / 2, 300, "THE COMMUNITY: FOR SUPPORTING THIS PROJECT")
		draw_sprite(communityicon, 0, display_get_gui_width() / 2 - sprite_get_width(communityicon) + communityiconoffsetx, 300 + communityiconoffsety)
	}
}