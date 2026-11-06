ADD_OBJECT_EVENT_GML_HOOK;
#macro VKEYUI_BUTTON_HALF_WIDTH 32
#macro VKEYUI_CLOSE_HALF_WIDTH 16
if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self))
{
	old_button_x = (x - device_mouse_x_to_gui(0));
	old_button_y = (y - device_mouse_y_to_gui(0));
	mouseon = true;
	//global.vkeyui_selectedvbutton = self;
	global.vkeyui_hoveringbutton = true;
}

// Color
if(point_in_rectangle
(
	device_mouse_x_to_gui(0), 
	device_mouse_y_to_gui(0), 
	x + 64 - VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 - VKEYUI_BUTTON_HALF_WIDTH, 
	x + 64 + VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 + VKEYUI_BUTTON_HALF_WIDTH
))
{
	vkey_prompt_color();
	prompt_type = VKEYUI_KEY_TYPES.COLOR;
}

// Grid
if(point_in_rectangle
(
	device_mouse_x_to_gui(0), 
	device_mouse_y_to_gui(0), 
	x + 128 - VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 - VKEYUI_BUTTON_HALF_WIDTH, 
	x + 128 + VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 + VKEYUI_BUTTON_HALF_WIDTH
))
{
	global.vkeyui_gridmode = !global.vkeyui_gridmode;
}

// Add
if(point_in_rectangle
(
	device_mouse_x_to_gui(0), 
	device_mouse_y_to_gui(0), 
	x + 192 - VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 - VKEYUI_BUTTON_HALF_WIDTH, 
	x + 192 + VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 + VKEYUI_BUTTON_HALF_WIDTH
))
{
	// TODO: dynamically generate this string
	prompt = get_string_async("Choose button ( up, down, left, right, up+left, up+right, down+left, down+right, shift, z, x, c, shift_dash_lock, escape, shoot, debug, bind <value>, joystick)", last_input);
	prompt_type = VKEYUI_KEY_TYPES.ADD;
}

// Save
if(point_in_rectangle
(
	device_mouse_x_to_gui(0), 
	device_mouse_y_to_gui(0), 
	x + 256 - VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 - VKEYUI_BUTTON_HALF_WIDTH, 
	x + 256 + VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 + VKEYUI_BUTTON_HALF_WIDTH
))
{
	virtual_key_save(true, true);
}

// Load
if(point_in_rectangle
(
	device_mouse_x_to_gui(0), 
	device_mouse_y_to_gui(0), 
	x + 320 - VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 - VKEYUI_BUTTON_HALF_WIDTH, 
	x + 320 + VKEYUI_BUTTON_HALF_WIDTH, 
	y + 32 + VKEYUI_BUTTON_HALF_WIDTH
))
{
	var _temp_text = clipboard_get_text();
	// TODO: dynamically generate this string
	prompt = get_string_async("load buttons: help, load, default, controls.png, [{\"x\": 928.0,...}]", ((clipboard_has_text() && (string_pos("[", _temp_text) == 1)) ? _temp_text : ""));		
	prompt_type = VKEYUI_KEY_TYPES.LOAD;
}

// Close
if(point_in_rectangle
(
	device_mouse_x_to_gui(0),
	device_mouse_y_to_gui(0), 
	x + VKEY_EDIT_UI_WIDTH - VKEYUI_CLOSE_HALF_WIDTH, 
	y + 0 - VKEYUI_CLOSE_HALF_WIDTH, 
	x + VKEY_EDIT_UI_WIDTH + VKEYUI_CLOSE_HALF_WIDTH, 
	y + 0 + VKEYUI_CLOSE_HALF_WIDTH
))
{
	global.vkeyui_movingvkeys = false;
	
	virtual_key_save(false, true);
	with(obj_virtual_controller_manager)
		event_user(0);
		
	instance_destroy();
}