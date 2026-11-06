ADD_OBJECT_EVENT_GML_HOOK;
if(global.vkeyui_movingvkeys) 
{
	image_alpha = my_usual_alpha;
	if(global.vkeyui_selectedvbutton == self) 
		image_alpha = dsin(current_time * 0.2) * 0.2 + 0.5;
	
	if(mouse_check_button_released(mb_left)) 
	{
		mouseon = false;
		global.vkeyui_hoveringbutton = false;
	}
		
	if(mouseon && mouse_check_button(mb_left))
	{
		x = (old_button_x + device_mouse_x_to_gui(0));
        y = (old_button_y + device_mouse_y_to_gui(0));
		
		if(global.vkeyui_gridmode)
		{
			x = round(x / global.vkeyui_gridsize) * global.vkeyui_gridsize;
			y = round(y / global.vkeyui_gridsize) * global.vkeyui_gridsize;
		}
		
		if(is_control_blacklisted(keycodes[0]))
		{
			x = clamp(x, 0 + sprite_get_width(sprite_index) / 2, display_get_gui_width() - sprite_get_width(sprite_index) / 2);
			y = clamp(y, 0 + sprite_get_height(sprite_index) / 2, display_get_gui_height() - sprite_get_height(sprite_index) / 2);
		}
	}
}

if(is_control_blacklisted(keycodes[0])) 
{
	if(keycodes[0] == VKEYUI_KEY_TYPES.EDIT)
		return;
	
	if(keycodes[0] == VKEYUI_KEY_TYPES.GRID)
		pressed = global.vkeyui_gridmode;
		
	visible = global.vkeyui_movingvkeys;
}

if(global.vkeyui_forceshowcontrols || !global.vkeyui_forcehidecontrols)
{
	if(keycodes[0] == VKEYUI_KEY_TYPES.BIND)
		image_alpha = ((global.vkeyui_showbinds || forceshowbind) ? my_usual_alpha : 0);
}