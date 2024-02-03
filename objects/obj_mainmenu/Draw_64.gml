if(!newstuff){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_set_font(global.smallfont2)
	draw_text(100, 520, "PORTED BY MAIN_THING")
	draw_set_font(global.bigfont)
	draw_text(display_get_gui_width() / 2, 350, "LEVEL SELECT")
	draw_text(display_get_gui_width() / 2, 390, "WHATS NEW")
	draw_text(display_get_gui_width() / 2, 430, "OPTIONS")
	draw_sprite(spr_cursor, 0, 300, (350 + (selected_option * 40)))
} else {
	draw_set_halign(fa_center)
	draw_set_valign(fa_left)
	draw_set_color(c_white)
	draw_set_font(global.bigfont)
	draw_text(display_get_gui_width() / 2, 50, "NEW STUFF")
	draw_set_font(global.smallfont2)
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
	draw_text(50, 100, string_upper(tempstring))
}