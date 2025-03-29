draw_self();
if(keycode == "joystick")
{
	if(spr_joystick != noone) 
		draw_sprite_ext(spr_joystick, 0, x + joy_x, y + joy_y, image_xscale * stick_xscale, image_yscale * stick_yscale, 0, joy_blend, image_alpha);
	if(global.movingvkeys && global.selectedvbutton == self)
	{
		draw_set_color(c_yellow)
		draw_set_alpha(0.5)
		draw_rectangle(bbox_left, bbox_top, bbox_left + radius * (1 - joy_deadzone_x), bbox_bottom, true)
		draw_rectangle(bbox_right, bbox_top, bbox_right - radius * (1 - joy_deadzone_x), bbox_bottom, true)
		draw_rectangle(bbox_left, bbox_top + radius * (1 - joy_deadzone_y), bbox_right, bbox_top, true)
		draw_rectangle(bbox_left, bbox_bottom - radius * (1 - joy_deadzone_y), bbox_right, bbox_bottom, true)
	}
}