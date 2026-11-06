ADD_OBJECT_EVENT_GML_HOOK;
live_auto_call;

if(!typing)
	exit;

draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_set_font(font0);

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, 960, draw_height, false);

draw_set_color(c_white);
draw_text(16, draw_height, "> " + match);
draw_set_alpha(1);
draw_text(16, draw_height, "> " + text);