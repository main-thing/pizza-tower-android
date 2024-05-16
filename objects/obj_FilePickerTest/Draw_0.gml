draw_set_halign(fa_center)
draw_set_valign(fa_center)

if copying {
	
	// While asynchronous copying is happening, draw this animated
	// dot to not get bored while transfering big files
	
	var _t = self[$ "t"] ?? 0
	
	_t += 0.1
	
	draw_text(room_width / 2 + sin(_t) * 36, room_height / 2, ".")
	
	t = _t
} else {
	
	draw_text(room_width / 2, room_height / 2, "Tap anywhere\nto start open_document intent")
	
	if mouse_check_button_pressed(mb_left)
		ShowFilePicker()
}