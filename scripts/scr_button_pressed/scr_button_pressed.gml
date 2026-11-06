function scr_button_pressed(_a0)
{
	if (keyboard_check_pressed(vk_return) or keyboard_check_pressed(global.key_jump) or keyboard_check_pressed(global.key_jumpN))
		return -1;
	else if gamepad_is_connected(_a0)
	{
		if (gamepad_button_check(_a0, gp_face1) or gamepad_button_check(_a0, gp_start))
			return _a0;
	}
	return -2;
}

