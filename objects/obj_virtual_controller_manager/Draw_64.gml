ADD_OBJECT_EVENT_GML_HOOK;
if(global.vkeyui_showfps)
{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(FontDebug);
	draw_set_color((fps < 31) ? c_red : c_white);
	draw_set_alpha(1);
	draw_text(5, 5, string(fps));
}

if(global.vkeyui_movingvkeys && global.vkeyui_gridmode)
{
	draw_set_alpha(0.3);
	draw_set_color(c_red);
	var _size = global.vkeyui_gridsize;
	var _width = display_get_gui_width();
	var _height = display_get_gui_height();
	
	for(var i = 0; i <= _width; i += _size) 
	    draw_line(i, 0, i, _height);
		
	for(var i = 0; i <= _height; i += _size) 
	    draw_line(0, i, _width, i);
		
	draw_set_alpha(1);
}

/*
if(global.colorvkeys)
{
	var _width = display_get_gui_width()
	var _height = display_get_gui_height()
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_roundrect_ext((_width / 2) -200, (_height / 2) -100, (_width / 2) +200, (_height / 2) +100, 10, 10, false)
	
	draw_roundrect_ext((_width / 2) -180, (_height / 2) -80, (_width / 2) -140, (_height / 2) +80, 10, 10, false)
}
*/