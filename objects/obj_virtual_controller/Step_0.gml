if (global.movingvkeys) 
{
	image_alpha = myusualalpha
	if (global.selectedvbutton == self) 
	{
		image_alpha = Wave(0.3, 1, 3, 0)
	}
	if(!buttonlockable) 
	{
		if(vkeychecker > -1) 
		{
			//virtual_key_hide(vkeychecker)
			virtual_key_delete(vkeychecker)	
			vkeychecker = -1
		}
		if(vkeychecker2 > -1) 
		{
			//virtual_key_hide(vkeychecker2)
			virtual_key_delete(vkeychecker2)
			vkeychecker2 = -1	
		}
	}
	if (keycode != "delete" && keycode != "edit" && keycode != "addbutton" && keycode != "load" && keycode != "save" && keycode != "color" && keycode != "grid") 
	{
		if (mouse_check_button(mb_left) && position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)) 
		{
			if(!global.vkcount)	
			{
				old_button_x = (x - device_mouse_x_to_gui(0))
                old_button_y = (y - device_mouse_y_to_gui(0))
				mouseon = 1
				global.selectedvbutton = self
			}
			global.vkcount = true
		} 
		if (mouse_check_button_released(mb_left)) 
		{
			mouseon = 0
			global.vkcount = false
		}
	}
	if (is_string(keycode)) 
	{
		if (keycode == "addbutton" || keycode == "delete" || keycode == "load" || keycode == "save" || keycode == "color" || keycode == "grid") 
		{
			visible = true
		}
	}
	if (mouseon == 1 && mouse_check_button(mb_left))
	{
		x = (old_button_x + device_mouse_x_to_gui(0))
        y = (old_button_y + device_mouse_y_to_gui(0))
		if(global.vkeysgridmode)
		{
			x = round(x / global.vkeysgrid_size) * global.vkeysgrid_size
			y = round(y / global.vkeysgrid_size) * global.vkeysgrid_size
		}
	}
}
if(global.forceshowcontrols || !global.forcehidecontrols)
{
	if(keycode == "bind")
	{
		image_alpha = ((global.showbinds || forceshowbind) ? myusualalpha : 0)
	}
}