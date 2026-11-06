ADD_OBJECT_EVENT_GML_HOOK;
if((!pause) && obj_player1.key_start)
{
	var _cutscenehandler = 0
	with (obj_cutscene_handler)
	{
		if(!loop)
			_cutscenehandler = 1
	}
	with (obj_secretportal)
	{
		if touched
			_cutscenehandler = 1
	}
	with (obj_secretportalstart)
		_cutscenehandler = 1
	if(obj_savesystem.state == 0 && (!_cutscenehandler) && room != rank_room && room != Realtitlescreen && room != timesuproom)
	{
		selected = 0
		if(!instance_exists(obj_pausefadeout))
			instance_create(x, y, obj_pausefadeout)
	}
}

with (obj_player1)
{
	other.paletteselect = paletteselect
	other.spr_palette = spr_palette
}

if(pause && (!instance_exists(obj_option)))
{
	scr_getinput()
	application_surface_draw_enable(true)
	var prevselected = selected
	moveselect = ((-key_up2) + key_down2)
	selected += moveselect
	if(moveselect != 0)
		scr_soundeffect(step_sound)
	selected = clamp(selected, 0, (array_length(pause_menu) - 1))
	if(prevselected != selected)
	{
		peppino_sprite = pause_menu[selected][$ "spr"]

		peppino_sprite_number = sprite_get_number(peppino_sprite)
		peppino_index = 0
	}
	
	if key_jump
	{
		var _func = pause_menu[selected][$ "func"]
		if(_func != noone)
		{
			if(is_method(_func))
				_func()
			else
				live_snippet_call(_func)
		}
	}
	
	cursor_index += 0.35
	if(cursor_index > cursor_sprite_number)
	{
		var p = (cursor_index - floor(cursor_index))
		cursor_index = p
	}
	peppino_index += 0.35
	if(peppino_index > peppino_sprite_number)
	{
		p = (peppino_index - floor(peppino_index))
		peppino_index = p
	}
	for(var i = 0; i < array_length(toppin_sprite); i++)
	{
		toppin_index[i] += 0.35
		if(toppin_index[i] > toppin_number[i])
		{
			var t = toppin_index[i]
			p = (t - floor(t))
			toppin_index[i] = p
		}
	}
	toppin_has[0] = global.cheesefollow
	toppin_has[1] = global.pineapplefollow
	toppin_has[2] = global.sausagefollow
	toppin_has[3] = global.shroomfollow
	toppin_has[4] = global.tomatofollow
}
