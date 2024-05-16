var _max_devices = 4;

for (var i = 0; i < _max_devices; i++)
{
    var _touch_x = device_mouse_x_to_gui(i);
    var _touch_y = device_mouse_y_to_gui(i);
    var _held = device_mouse_check_button(i, mb_left);
    var _click = device_mouse_check_button_pressed(i, mb_left);
	with(obj_virtual_controller){
		if(_held){
			if(position_meeting(_touch_x, _touch_y, self)){ 
				input(i, _touch_x, _touch_y, _click)
			}
		}
	}
}