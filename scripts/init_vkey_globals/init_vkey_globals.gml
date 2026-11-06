#macro VKEY_DEPTH -1999
#macro USE_ASSETS_FOR_DEFAULT_LAYOUT true
#macro ENABLE_VKEY_DEBUG_VIEWS false
#macro BUTTON_SAVE_LOCATION "buttonpositions.save"
#macro STARTUP_COMMAND_LOCATION "startupcommand.txt"
#macro ENABLE_STARTUP_COMMANDS true
#macro USE_GMLIVE true

enum KEY_PROMPTS 
{
	SAVE,
	LOAD,
	ADD,
	EDIT,
	DEBUG,
	NONE
}

// doing this so it`s less likely for us to forget adding a string variant for the enum
globalvar VKEYUI_KEY_TYPES;
VKEYUI_KEY_TYPES =
{
	NONE: 0,
	JOYSTICK: 1,
	EDIT: 2,
	ADD: 3,
	REMOVE: 4,
	COLOR: 5,
	GRID: 6,
	SAVE: 7,
	LOAD: 8,
	DEBUG: 9,
	BIND: 10
}

global.vkeyui_forceshowcontrols = false;
global.vkeyui_forcehidecontrols = false;
global.vkeyui_movingvkeys = false;
global.vkeyui_selectedvbutton = undefined;
global.vkeyui_showbinds = true;
global.vkeyui_gridmode = false;
global.vkeyui_gridsize = 16;
global.vkeyui_showfps = false;
global.vkeyui_hoveringbutton = false;
global.vkeyui__blacklisted_controls = ds_list_create();
		
ds_list_add(global.vkeyui__blacklisted_controls, VKEYUI_KEY_TYPES.EDIT, VKEYUI_KEY_TYPES.ADD, VKEYUI_KEY_TYPES.REMOVE, VKEYUI_KEY_TYPES.LOAD, VKEYUI_KEY_TYPES.SAVE, VKEYUI_KEY_TYPES.COLOR, VKEYUI_KEY_TYPES.GRID);
		
global.vkeyui__blacklisted_variables = ds_list_create();
ds_list_add
(
	global.vkeyui__blacklisted_variables, 
	"mouseon", 
	"held_keys", 
	"last_input", 
	"prompt",
	"old_button_x",
	"old_button_y",
	"old_scale_x",
	"old_scale_y",
	"pressed",
	"input",
	"vkeys",
	"touch_id"
);

global.vkeyui__special_variables = ds_list_create();
ds_list_add
(
	global.vkeyui__special_variables, 
	// manually handle these variables
	"sprite_index", 
	"sprite", 
	"spr_pressed",
	"spr_palette",
	
	"spr_joystick",
	"stick_xscale",
	"stick_yscale",
	"joy_x",
	"joy_y",
	"joy_deadzone_x",
	"joy_deadzone_y",
	"joy_blend"
);

if(USE_ASSETS_FOR_DEFAULT_LAYOUT)
	global.vkeyui_cachedlayout = "";
			