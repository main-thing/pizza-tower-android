if(touch_id != -1)
{
	if (device_mouse_check_button(touch_id, mb_left) && !global.movingvkeys)
    {
        joy_x = device_mouse_x_to_gui(touch_id) - x;
        joy_y = device_mouse_y_to_gui(touch_id) - y;
        var _direction = point_direction(0, 0, joy_x, joy_y);
        var _distance = point_distance(0, 0, joy_x, joy_y);
        if (_distance > radius)
        {
            joy_x = lengthdir_x(radius, _direction);
            joy_y = lengthdir_y(radius, _direction);
        }
    }
    else
    {
        touch_id = -1;
        joy_x = 0;
        joy_y = 0;
    }
		
	var _up = (joy_y / radius < -joy_deadzone_y)
	_up = _up ? keyboard_key_press : keyboard_key_release
	_up(global.key_up)
		
	var _down = (joy_y / radius > joy_deadzone_y)
	_down = _down ? keyboard_key_press : keyboard_key_release
	_down(global.key_down)
		
	var _left = (joy_x / radius < -joy_deadzone_x)
	_left = _left ? keyboard_key_press : keyboard_key_release
	_left(global.key_left)
		
	var _right = (joy_x / radius > joy_deadzone_x)
	_right = _right ? keyboard_key_press : keyboard_key_release
	_right(global.key_right)
}