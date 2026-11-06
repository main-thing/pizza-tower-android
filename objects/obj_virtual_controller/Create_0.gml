ADD_OBJECT_EVENT_GML_HOOK;
if(!variable_instance_exists(id, "keycodes"))
	keycodes = [VKEYUI_KEY_TYPES.NONE, ord("Z")];
vkeys = [];

//blacklisted variables
input = noone;
prompt = undefined;
old_button_x = x;
old_button_y = y;

last_input = "";
pressed = false;
mouseon = false;
touch_id = -1;

depth = VKEY_DEPTH;
if(!variable_instance_exists(id, "buttonlockable"))
	buttonlockable = false;
if(!variable_instance_exists(id, "realcolor"))
	realcolor = c_white;
if(!variable_instance_exists(id, "pressed_color"))
	pressed_color = realcolor;
if(!variable_instance_exists(id, "sprite"))
	sprite = spr_button_z_big;
if(!variable_instance_exists(id, "spr_pressed"))
	spr_pressed = noone;
if(!variable_instance_exists(id, "spr_palette"))
	spr_palette = noone;
if(!variable_instance_exists(id, "paletteselect"))
	paletteselect = 0;
sprite_index = sprite;

// joystick variables
if(!variable_instance_exists(id, "spr_joystick"))
	spr_joystick = spr_button_joystick;
if(!variable_instance_exists(id, "stick_xscale"))
	stick_xscale = 1;
if(!variable_instance_exists(id, "stick_yscale"))
	stick_yscale = 1;
joy_x = 0;
joy_y = 0;
if(!variable_instance_exists(id, "joy_deadzone_x"))
	joy_deadzone_x = 0.5;
if(!variable_instance_exists(id, "joy_deadzone_y"))
	joy_deadzone_y = 0.5;
joy_blend = c_white;

// init controls
if(!variable_instance_exists(id, "my_usual_alpha"))
	my_usual_alpha = 0.5;
image_alpha = my_usual_alpha;
persistent = true;
vkey_init_input();