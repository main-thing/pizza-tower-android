if (global.miniboss)
{
	
	draw_set_font(global.bigfont)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
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