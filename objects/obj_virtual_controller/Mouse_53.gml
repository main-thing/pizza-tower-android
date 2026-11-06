ADD_OBJECT_EVENT_GML_HOOK;
// run this before so you don't accidentally delete it on select
if(global.vkeyui_movingvkeys && global.vkeyui_selectedvbutton == self)
{
	if(!is_control_blacklisted(keycodes[0]))
	{
		if(point_in_rectangle
		(
			device_mouse_x_to_gui(0), 
			device_mouse_y_to_gui(0), 
			x - sprite_xoffset + sprite_width - VKEYUI_CLOSE_HALF_WIDTH, 
			y - sprite_yoffset - VKEYUI_CLOSE_HALF_WIDTH,
			x - sprite_xoffset + sprite_width + VKEYUI_CLOSE_HALF_WIDTH, 
			y - sprite_yoffset + VKEYUI_CLOSE_HALF_WIDTH,
		))
		{
			global.vkeyui_selectedvbutton = noone;
			instance_destroy();
		}
	}
}

vkey_controls_edit_mode()
vkey_handle_special_buttons()