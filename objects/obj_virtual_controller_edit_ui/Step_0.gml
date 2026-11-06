ADD_OBJECT_EVENT_GML_HOOK;
if(global.vkeyui_movingvkeys) 
{
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
		
		x = clamp(x, 0, display_get_gui_width() - VKEY_EDIT_UI_WIDTH);
		y = clamp(y, 0, display_get_gui_height() - 64);
	}
}
else
{
	// just in-case
	instance_destroy();
}