ADD_OBJECT_EVENT_GML_HOOK;
if(!instance_exists(object_id) || !global.vkeyui_movingvkeys) 
	return instance_destroy();
if(dragging)
{
	x = old_click_x + device_mouse_x_to_gui(0);
	y = old_click_y + device_mouse_y_to_gui(0);
	if(global.vkeyui_gridmode)
	{
		x = round(x / global.vkeyui_gridsize) * global.vkeyui_gridsize;
		y = round(y / global.vkeyui_gridsize) * global.vkeyui_gridsize;
	}
	with(object_id) 
	{
		image_xscale = other.object_xscale * ((other.x - x) / (other.click_x - x))
		image_yscale = other.object_yscale * ((other.y - y) / (other.click_y - y))
	}
}
with(object_id)
{
	other.x = x + sprite_width - sprite_xoffset;
	other.y = y + sprite_height - sprite_yoffset;
}