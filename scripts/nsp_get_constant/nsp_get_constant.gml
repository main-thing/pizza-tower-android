/// @description nsp_get_constant(String)
/// @param String
function nsp_get_constant(argument0) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	var work_str;

	work_str = argument0;

	switch (work_str) begin

	 //Boolean:
		case "true": return true;
 
		case "false": return false;

	 //Mouse:
		case "mb_left": return mb_left;
 
		case "mb_right": return mb_right;
 
		case "mb_middle": return mb_middle;
		
		case "mb_none": return mb_none;
		
		case "mb_side1": return mb_side1;
		
		case "mb_side2": return mb_side2;
 
	 //Keyboard:
		case "vk_add": return vk_add;
		case "vk_alt": return vk_alt;
		case "vk_anykey": return vk_anykey;
		case "vk_backspace": return vk_backspace;
		case "vk_control": return vk_control;
		case "vk_decimal": return vk_decimal;
		case "vk_delete": return vk_delete;
		case "vk_divide": return vk_divide;
		case "vk_down": return vk_down;
		case "vk_end": return vk_end;
		case "vk_enter": return vk_enter;
		case "vk_escape": return vk_escape;
		case "vk_f1": return vk_f1;
		case "vk_f2": return vk_f2;
		case "vk_f3": return vk_f3;
		case "vk_f4": return vk_f4;
		case "vk_f5": return vk_f5;
		case "vk_f6": return vk_f6;
		case "vk_f7": return vk_f7;
		case "vk_f8": return vk_f8;
		case "vk_f9": return vk_f9;
		case "vk_f10": return vk_f10;
		case "vk_f11": return vk_f11;
		case "vk_f12": return vk_f12;
		case "vk_home": return vk_home;
		case "vk_insert": return vk_insert;
		case "vk_lalt": return vk_lalt;
		case "vk_lcontrol": return vk_lcontrol;
		case "vk_left": return vk_left;
		case "vk_lshift": return vk_lshift;
		case "vk_multiply": return vk_multiply;
		case "vk_nokey": return vk_nokey;
		case "vk_numpad0": return vk_numpad0;
		case "vk_numpad1": return vk_numpad1;
		case "vk_numpad2": return vk_numpad2;
		case "vk_numpad3": return vk_numpad3;
		case "vk_numpad4": return vk_numpad4;
		case "vk_numpad5": return vk_numpad5;
		case "vk_numpad6": return vk_numpad6;
		case "vk_numpad7": return vk_numpad7;
		case "vk_numpad8": return vk_numpad8;
		case "vk_numpad9": return vk_numpad9;
		case "vk_pagedown": return vk_pagedown;
		case "vk_pageup": return vk_pageup;
		case "vk_pause": return vk_pause;
		case "vk_printscreen": return vk_printscreen;
		case "vk_ralt": return vk_ralt;
		case "vk_rcontrol": return vk_rcontrol;
		case "vk_right": return vk_right;
		case "vk_rshift": return vk_rshift;
		case "vk_shift": return vk_shift;
		case "vk_space": return vk_space;
		case "vk_subtract": return vk_subtract;
		case "vk_tab": return vk_tab;
		case "vk_up": return vk_up;
	 //rooms:
		case "room": return room;
		case "room_first": return room_first;
		case "room_last": return room_last;
		case "room_height": return room_height;
		case "room_width": return room_width;
		
	 //Colours:
		case "c_aqua": return c_aqua;
		case "c_black": return c_black;
		case "c_blue": return c_blue;
		case "c_dkgray": return c_dkgray;
		case "c_fuchsia": return c_fuchsia;
		case "c_gray": return c_gray;
		case "c_green": return c_green;
		case "c_lime": return c_lime;
		case "c_ltgray": return c_ltgray;
		case "c_maroon": return c_maroon;
		case "c_navy": return c_navy;
		case "c_olive": return c_olive;
		case "c_orange": return c_orange;
		case "c_purple": return c_purple;
		case "c_red": return c_red;
		case "c_silver": return c_silver;
		case "c_teal": return c_teal;
		case "c_white": return c_white;
		case "c_yellow": return c_yellow;
	
	 // buffers:
		case "buffer_bool": return buffer_bool;
		case "buffer_f16": return buffer_f16;
		case "buffer_f32": return buffer_f32;
		case "buffer_f64": return buffer_f64;
		case "buffer_fast": return buffer_fast;
		case "buffer_fixed": return buffer_fixed;
		case "buffer_grow": return buffer_grow;
		case "buffer_s8": return buffer_s8;
		case "buffer_s16": return buffer_s16;
		case "buffer_s32": return buffer_s32;
		
	 // views:
		case "os_windows": return os_windows;
		case "os_linux": return os_linux;
		case "os_macosx": return os_macosx;
		case "os_ios": return os_ios;
		case "os_tvos": return os_tvos;
		case "os_android": return os_android;
		case "os_ps4": return os_ps4;
		case "os_ps5": return os_ps5;
		case "os_xboxseriesxs": return os_xboxseriesxs;
		case "os_switch": return os_switch;
		case "os_unknown": return os_unknown;
		case "pi": return pi;
		
	 // files:
		case "fa_archive": return fa_archive;
		case "fa_directory": return fa_directory;
		case "fa_hidden": return fa_hidden;
		case "fa_readonly": return fa_readonly;
		case "fa_sysfile": return fa_sysfile;
		case "fa_volumeid": return fa_volumeid;
		
	 // alignment:
		case "fa_bottom": return fa_bottom;
		case "fa_center": return fa_center;
		case "fa_left": return fa_left;
		case "fa_middle": return fa_middle;
		case "fa_right": return fa_right;
		case "fa_top": return fa_top;
	 
	 
	 //If not a defined constant:
	 default: return pointer_invalid;

	end;



}
