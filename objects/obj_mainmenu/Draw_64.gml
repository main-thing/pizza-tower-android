if(!newstuff && !credits){
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(subtextfont)
	draw_text(10, 520, "V11")
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(titlefont)
	draw_set_color((selected_option == 0) ? c_white : c_gray)
	draw_text(480, 350, "LEVEL SELECT")
	draw_set_color((selected_option == 1) ? c_white : c_gray)
	draw_text(480, 390, "WHATS NEW")
	draw_set_color((selected_option == 2) ? c_white : c_gray)
	draw_text(480, 430, "CREDITS")
	draw_set_color((selected_option == 3) ? c_white : c_gray)
	draw_text(480, 470, "DISCORD")
	draw_set_color(c_white)
	cursorindex += 0.35
	if cursorindex > sprite_get_number(spr_cursor)
		cursorindex = frac(cursorindex)
	var cursoroffset = 280
	if(selected_option == 1) cursoroffset = 320
	if(selected_option > 1) cursoroffset = 360
	draw_sprite(spr_cursor, cursorindex, cursoroffset, (350 + (selected_option * 40)))
} else {
	if(newstuff){
		draw_set_halign(fa_center)
		draw_set_valign(fa_left)
		draw_set_color(c_white)
		draw_set_font(titlefont)
		draw_set_alpha(0.5)
		draw_set_font(subtextfont2)
		draw_roundrect_color_ext(50, 80 + stringoffset, 910, 100 + (string_height_ext(string_upper(textstring),36,1600) / 2) + stringoffset, 10, 10, c_black, c_black, false)
		draw_set_font(titlefont)
		draw_roundrect_color_ext(50, 25 + stringoffset, 910, 75 + stringoffset, 10, 10, c_black, c_black, false)
		draw_set_alpha(1)
		draw_text(480, 35 + stringoffset, "NEW STUFF")
		draw_set_font(subtextfont2)
		/*
		var i = 0
		var previndex_1 = 0
		var previndex_2 = 0
		*/
		//var tempstring = textstring
		/*if string_count("[",textstring) == string_count("]",textstring){	
			while(i < string_count("[",textstring)){
				previndex_1 = string_pos_ext("[",textstring,previndex_1)
				previndex_2 = string_pos_ext("]",textstring,previndex_2)
				//show_message(string_copy(textstring, previndex_1 + 1, previndex_2 - previndex_1 - 1) + "\n previndex_2:" + string(previndex_2) + "\n previndex_1:" + string(previndex_1))
				draw_sprite(asset_get_index(string_copy(textstring,	previndex_1 + 1, previndex_2 - previndex_1 - 1)) , 0 , string_width(tempstring) * 5, 0)
				tempstring = string_delete(textstring, previndex_1, previndex_2 - previndex_1)
				i++
			}
		}*/
		draw_set_halign(fa_left)
		draw_text_ext_transformed(80, 90 + stringoffset, string_upper(textstring), 36, 1600, 0.5, 0.5, 0)
		draw_sprite_ext(spr_virtual_controller, 0, 38, 432, 1, 1, 0, c_white, 0.5)
		draw_sprite_ext(spr_virtual_controller, 0, 38, 498, 1, 1, 180, c_white, 0.5)
		draw_sprite_ext(spr_button_escape, 0, 2356 * 0.01, 1080 * 0.02, 1, 1, 0, c_white, 0.5)
	}
	// TODO: replace with new credits
	if(credits){
		/*
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
		*/
		draw_set_alpha(0.8)
		draw_set_color(c_black)
		//left
		draw_roundrect_ext(2356 * 0.028, 1080 * 0.05, 2356 * (0.16 + 0.028), 1080 * (0.36 + 0.05), 10, 10, false)
		//right top
		draw_roundrect_ext(2356 * 0.23, 1080 * 0.05, 2356 * (0.16 + 0.23), 1080 * (0.20 + 0.05), 10, 10, false)
		//right bottom
		//draw_roundrect_ext(2356 * 0.23, 1080 * 0.3, 2356 * (0.16 + 0.23), 1080 * (0.11 + 0.3), 10, 10, false)
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_sprite(spr_MCPIGicon, 0, 2356 * 0.05, 1080 * 0.12)
		draw_sprite(spr_COMMUNITYicon, 0, 2356 * 0.05, 1080 * 0.20)
		draw_sprite(spr_TNGicon, 0, 2356 * 0.05, 1080 * 0.29)
		draw_sprite(spr_LOYicon, 0, 2356 * 0.05, 1080 * 0.37) // add sprite
		draw_sprite(spr_ATESicon, 0, 2356 * 0.25, 1080 * 0.12) // add sprite again
		draw_sprite(spr_Dicon, 0, 2356 * 0.25, 1080 * 0.20) // add sprite again again
		//draw_sprite(spr_emptyicon, 0, 2356 * 0.25, 1080 * 0.37)
		//draw_sprite(spr_treasure_eggplant, 0, 2356 * 0.27 - 66, 1080 * 0.37 + 6)
		//draw_sprite(spr_roomnamebg, 0, 2356 * 0.21, 1080 * 0.45)
		draw_sprite_ext(spr_button_escape, 0, 2356 * 0.01, 1080 * 0.02, 1, 1, 0, c_white, 0.5)
		
		//draw_set_font(global.bigfont)
		//draw_text(2356 * 0.21, 1080 * 0.458, "CREDITS")
		draw_set_halign(fa_left)
		draw_set_font(global.bigfont)
		draw_text(2356 * 0.036, 1080 * 0.08, "MAIN CREDITS")
		draw_text(2356 * 0.236, 1080 * 0.08, "OTHER CREDITS")
		
		draw_set_font(font2)
		draw_text(2356 * 0.07, 1080 * 0.12, "Tour De Pizza")
		draw_text(2356 * 0.07, 1080 * 0.19, "main_thing")
		draw_text(2356 * 0.07, 1080 * 0.27, "TNG")
		draw_text(2356 * 0.07, 1080 * 0.36, "femloy")
		
		draw_text(2356 * 0.27, 1080 * 0.12, "AtesQuik")
		draw_text(2356 * 0.27, 1080 * 0.195, "D")
		
		//draw_text(2356 * 0.236, 1080 * 0.32, "And most importantly")
		//draw_text(2356 * 0.27, 1080 * 0.36, "The Community")
		
		draw_set_font(font0)
		draw_text(2356 * 0.07, 1080 * 0.15, "For Pizza Tower.")
		draw_text(2356 * 0.07, 1080 * 0.22, "Creator of the project.")
		draw_text(2356 * 0.07, 1080 * 0.31, @"Playtesting,  spriting,  suggestions,  
	concepts.")
		draw_text(2356 * 0.07, 1080 * 0.39, "Eggplant Build Decomp.")
		draw_text(2356 * 0.27, 1080 * 0.15, "For the shader fix.")
		draw_text(2356 * 0.27, 1080 * 0.22, "For the shader fix aswell.")
		//draw_text(2356 * 0.27, 1080 * 0.39, "For supporting the project.")
		
		
	}
}