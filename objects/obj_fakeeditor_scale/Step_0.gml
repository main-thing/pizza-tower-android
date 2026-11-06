ADD_OBJECT_EVENT_GML_HOOK;
if(live_call()) return live_result
if(!instance_exists(obj_fakeeditor)) 
	return instance_destroy()
if(obj_fakeeditor.in_play_mode) 
	return instance_destroy()
if(!instance_exists(object_id)) 
	return instance_destroy()
if(object_id != obj_fakeeditor.selectedent) 
	return instance_destroy()
if(camera_trigger)
{
	/*if(dragging)
	{
		if(dir == 0)
		{
			x = old_click_x + device_mouse_x_to_gui(0);
			if(obj_fakeeditor.grid_mode)
				x = round(x / obj_fakeeditor.grid_size) * obj_fakeeditor.grid_size
			with(object_id) 
			{
				camera_width = other.object_xscale * ((other.x - x) / (other.click_x - x))
			}
		}
		if(dir == 90)
		{
			y = old_click_y + device_mouse_y_to_gui(0);
			if(obj_fakeeditor.grid_mode)
				y = round(y / obj_fakeeditor.grid_size) * obj_fakeeditor.grid_size
			with(object_id) 
			{
				camera_height = other.object_yscale * ((other.y - y) / (other.click_y - y))
			}
		}
	}*/
	if(dir == 0)
	{
		with(object_id) other.y = y - (camera_height / 2) + camera_y
	}
	if(dir == 90)
	{
		with(object_id) other.x = x + (camera_width / 2) + camera_x
	}
}
else
{
	if(dragging)
	{
		if(dir == 0)
		{
			x = old_click_x + device_mouse_x_to_gui(0);
			if(obj_fakeeditor.grid_mode)
				x = round(x / obj_fakeeditor.grid_size) * obj_fakeeditor.grid_size
			with(object_id) 
			{
				image_xscale = other.object_xscale * ((other.x - x) / (other.click_x - x))
			}
		}
		if(dir == 90)
		{
			y = old_click_y + device_mouse_y_to_gui(0);
			if(obj_fakeeditor.grid_mode)
				y = round(y / obj_fakeeditor.grid_size) * obj_fakeeditor.grid_size
			with(object_id) 
			{
				image_yscale = other.object_yscale * ((other.y - y) / (other.click_y - y))
			}
		}
	}
	if(dir == 0)
	{
		with(object_id) other.y = y + (sprite_height / 2) - sprite_yoffset
	}
	if(dir == 90)
	{
		with(object_id) other.x = x + (sprite_width / 2) - sprite_xoffset
	}
}