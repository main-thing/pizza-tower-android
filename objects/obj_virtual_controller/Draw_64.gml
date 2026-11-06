ADD_OBJECT_EVENT_GML_HOOK;
if(sprite_exists(spr_palette))
{
	shader_set(global.Pal_Shader);
	pal_swap_set(spr_palette, paletteselect);
}
draw_self();

if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
{
	if(sprite_exists(spr_joystick))
		draw_sprite_ext(spr_joystick, 0, x + joy_x, y + joy_y, image_xscale * stick_xscale, image_yscale * stick_yscale, 0, joy_blend, image_alpha);
	if(global.vkeyui_movingvkeys && global.vkeyui_selectedvbutton == self)
	{
		draw_set_color(c_yellow);
		draw_set_alpha(0.5);
		draw_rectangle(
			bbox_left, 
			bbox_top,
			bbox_left + radius * (1 - joy_deadzone_x), 
			bbox_bottom, 
		true);
		
		draw_rectangle(
			bbox_right,
			bbox_top,
			bbox_right - radius * (1 - joy_deadzone_x),
			bbox_bottom,
		true);
		
		draw_rectangle(
			bbox_left,
			bbox_top + radius * (1 - joy_deadzone_y),
			bbox_right,
			bbox_top,
		true);
		
		draw_rectangle(
			bbox_left,
			bbox_bottom - radius * (1 - joy_deadzone_y),
			bbox_right,
			bbox_bottom, 
		true);
		draw_set_alpha(1)
	}
}

if(sprite_exists(spr_palette))
{
	shader_reset();
}
if(global.vkeyui_movingvkeys && global.vkeyui_selectedvbutton == self)
{
	if(!is_control_blacklisted(keycodes[0]))
		draw_sprite(spr_button_close_controls_edit, 0, x - sprite_xoffset + sprite_width, y - sprite_yoffset);
}