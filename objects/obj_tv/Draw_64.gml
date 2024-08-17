if (room == editor_room)
	exit;
if(instance_exists(obj_fakeeditor)){
	if(!obj_fakeeditor.in_play_mode)
		exit;
}
if(instance_exists(obj_player1)){
	tv_x = obj_player1.tv_hud_x
	tv_y = obj_player1.tv_hud_y
	fake_tv_x = obj_player1.fake_tv_hud_x
	fake_tv_y = obj_player1.fake_tv_hud_y
	tv_bg_sprite = obj_player1._spr_tv_bg
	tv_overlay_sprite = obj_player1._spr_tv_empty
	timer_xstart = obj_player1.escapetimer_x
	timer_ystart = obj_player1.escapetimer_y
}
draw_set_font(global.bigfont)
draw_set_halign(fa_center)
draw_set_color(c_white)
if is_bossroom()
	exit;
if hide 
	exit;
if global.use_temperature
{
	var _width = sprite_get_width(spr_temperature_meterfill)
	var _height = sprite_get_height(spr_temperature_meterfill)
	global.temperature = clamp(global.temperature, 0, (global.temp_thresholdnumber * 100))
	var _tmp = (global.temperature / (global.temp_thresholdnumber * 100))
	var _top = 0
	var _height2 = (_height * _tmp)
	draw_sprite_part_ext(spr_temperature_meterfill, 0, 0, _top, _width, _height2, 864, (192 + _height), 1, -1, c_white, 1)
	draw_sprite(spr_temperature_meter, 0, 864, 192)
}
if(global.oldhud){
	font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
	draw_set_font(font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha)
	draw_text(xi, yi, string_hash_to_newline(message))
	if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo)){
	    draw_set_valign(fa_top)
		draw_text(852, 75, string_hash_to_newline(global.combo))
	}
	if (tvsprite == spr_tvdefault)
	{
	    chose = 0
	    if (room != boss_room1){
			draw_set_valign(fa_top)
	        draw_text(832, 60, string_hash_to_newline(global.collect))
		}
	}
	if instance_exists(obj_pizzaball)
	    draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "GOLF HIT")))
	exit;
}
var collect_x = irandom_range((-collect_shake), collect_shake)
var collect_y = irandom_range((-collect_shake), collect_shake)
var _cx = (fake_tv_x + combo_posX)
var _cy = (((fake_tv_y + 117) + hud_posY) + combo_posY)
var _perc = (global.combotime / 60)
var _minX = (_cx - 56)
var _maxX = (_cx + 59)
combofill_x = lerp(combofill_x, (_minX + ((_maxX - _minX) * _perc)), 0.5)
combofill_y = _cy
draw_sprite(spr_tv_combobubblefill, combofill_index, combofill_x, combofill_y)
draw_sprite(spr_tv_combobubble, -1, _cx, _cy)
draw_set_font(global.combofont2)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
var _tx = (_cx - 64)
var _ty = (_cy - 12)
var _str = string(global.combo)
var num = string_length(_str)
for (var i = num; i > 0; i--)
{
	var char = string_char_at(_str, i)
	draw_text(_tx, _ty, char)
	_tx -= 22
	_ty -= 8
}
if (room != strongcold_endscreen)
{
	draw_sprite_ext(tv_bg_sprite, 0, (fake_tv_x + collect_x), ((fake_tv_y + collect_y) + hud_posY), 1, 1, 0, c_white, alpha)
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
		draw_sprite_ext(sprite_index, image_index, (tv_x + collect_x), ((tv_y + collect_y) + hud_posY), obj_player1.tv_hud_xscale, obj_player1.tv_hud_yscale, 0, c_white, alpha)
		if(obj_player1.faketv){
			draw_sprite_ext(tv_overlay_sprite, 0, (fake_tv_x + collect_x), ((fake_tv_y + collect_y) + hud_posY), obj_player1.fake_tv_hud_xscale, obj_player1.fake_tv_hud_yscale, 0, c_white, alpha)
		}
		shader_reset()
	} else{
		draw_sprite_ext(sprite_index, image_index, (tv_x + collect_x), ((tv_y + collect_y) + hud_posY), obj_player1.tv_hud_xscale, obj_player1.tv_hud_yscale, 0, c_white, alpha)
		if(obj_player1.faketv){
			draw_sprite_ext(tv_overlay_sprite, 0, (fake_tv_x + collect_x), ((fake_tv_y + collect_y) + hud_posY), obj_player1.fake_tv_hud_xscale, obj_player1.fake_tv_hud_yscale, 0, c_white, alpha)
		}
	}
	
}
if (bubblespr != -4)
	draw_sprite_ext(bubblespr, bubbleindex, 512, 53, 1, 1, 1, c_white, alpha)
if (!surface_exists(promptsurface))
	promptsurface = surface_create(290, 102)
surface_set_target(promptsurface)
draw_clear_alpha(c_black, 0)
draw_set_font(font1)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
if (bubblespr == spr_tv_bubble)
{
	promptx -= promptspd
	if (bubblespr != spr_tv_bubbleclose && promptx < (350 - string_width(prompt)))
	{
		bubblespr = spr_tv_bubbleclose
		bubbleindex = 0
	}
	draw_text_color((promptx - 350), 50, prompt, c_black, c_black, c_black, c_black, 1)
}
draw_set_halign(fa_left)
surface_reset_target()
draw_surface(promptsurface, 350, 0)
draw_set_font(global.smallnumber_fnt)
draw_set_halign(fa_center)
if instance_exists(obj_pizzaball)
	draw_text(832, 300, ((string(global.golfhit) + " ") + "GOLF HIT"))
if global.panic
{
	var _fill = global.fill
	var _currentbarpos = (chunkmax - _fill)
	_perc = (_currentbarpos / chunkmax)
	var _max_x = 299
	var _barpos = (_max_x * _perc)
	if (!surface_exists(bar_surface))
		bar_surface = surface_create(298, 30)
	var _barfillpos = (floor(_barpos) + 13)
	if (_barfillpos > 0)
	{
		surface_resize(bar_surface, _barfillpos, 30)
		surface_set_target(bar_surface)
		draw_clear_alpha(c_black, 0)
		var clip_x = (timer_x + 3)
		var clip_y = (timer_y + 5)
		for (i = 0; i < 3; i++)
			draw_sprite(spr_timer_barfill, 0, (barfill_x + (i * 173)), 0)
		surface_reset_target()
		draw_surface(bar_surface, clip_x, clip_y)
	}
	draw_sprite(spr_timer_bar, -1, timer_x, timer_y)
	draw_sprite(johnface_sprite, johnface_index, ((timer_x + 13) + _barpos), (timer_y + 20))
	draw_sprite(pizzaface_sprite, pizzaface_index, (timer_x + 320), (timer_y + 10))
	if(global.oldsprites == false){
		var minutes = 0;
		for (var seconds = ceil(global.fill / 12); seconds > 59; seconds -= 60)
			minutes++;
		if (seconds < 10)
			seconds = concat("0", seconds);
		else
			seconds = string(seconds);
		draw_set_halign(1);
		draw_set_valign(1);
		draw_set_font(global.bigfont);
		draw_text(timer_x + 153, timer_y + 18, concat(minutes, ":", seconds));
	}
}
