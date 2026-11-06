ADD_OBJECT_EVENT_GML_HOOK;
sprite_index = ((sprite_exists(spr_pressed) && pressed) ? spr_pressed : sprite)
image_blend = (pressed ? pressed_color : realcolor)

if(!global.vkeyui_movingvkeys) 
{	
	if(is_control_blacklisted(keycodes[0])) 
		visible = false
		
	global.vkeyui_selectedvbutton = noone;
	image_alpha = my_usual_alpha
}

if(!global.vkeyui_forceshowcontrols)
{
	if(!global.vkeyui_forcehidecontrols)
	{
		if(is_control_blacklisted(keycodes[0]))
			visible = true
	} 
	else 
	{	
		visible = false
	}
}