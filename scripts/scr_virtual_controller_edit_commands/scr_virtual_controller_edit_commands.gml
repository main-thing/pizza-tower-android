// This has to placed here due to asset load order.
global.vkeyui_edit_table = {};

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			global.vkeyui_gridsize = max(real_safe(argument[0]),1);
		}
	},
	"gridsize",
	"gridsize (num)",
	VKEYUI_KEY_TYPES.NONE,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 2)
		{
			with(global.vkeyui_selectedvbutton)
			{
				realcolor = 
				make_color_rgb
				(
					int64_safe(argument[0]),
					int64_safe(argument[1]),
					int64_safe(argument[2])
				);
				image_blend = realcolor;
			}
		}
	},
	"color",
	"color r(num) g(num) b(num)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 2)
		{
			with(global.vkeyui_selectedvbutton)
			{
				pressed_color = 
				make_color_rgb
				(
					int64_safe(argument[0]),
					int64_safe(argument[1]),
					int64_safe(argument[2])
				)
			}
		}
	},
	"pressed_color",
	"pressed_color r(num) g(num) b(num)",
	VKEYUI_KEY_TYPES.NONE,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
				image_xscale = int64_safe(argument[0]);
		}
	},
	"scale_x",
	"scale_x (num)",
	VKEYUI_KEY_TYPES.NONE,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
				image_yscale = real_safe(argument[0]);
		}
	},
	"scale_y",
	"scale_y (num)",
	VKEYUI_KEY_TYPES.NONE,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				image_xscale = real_safe(argument[0]);
				image_yscale = real_safe(argument[0]);
				if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
					radius = sprite_width / 2;
			}
		}
	},
	"scale",
	"scale (num)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				my_usual_alpha = real_safe(argument[0]);
				image_alpha = real_safe(argument[0]);
			}
		}
	},
	"alpha",
	"alpha (num)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				sprite_index = asset_get_index_vkey(argument[0]);
				sprite = asset_get_index_vkey(argument[0]);
				if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
					radius = sprite_width / 2;
			}
		}
	},
	"sprite",
	"sprite (asset)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				spr_joystick = asset_get_index_vkey(argument[0]);
			}
		}
	},
	"stick_sprite",
	"stick_sprite (asset)",
	VKEYUI_KEY_TYPES.JOYSTICK
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				stick_xscale = real_safe(argument[0]);
			}
		}
	},
	"stick_scale_x",
	"stick_scale_x (num)",
	VKEYUI_KEY_TYPES.JOYSTICK,
	false
);

register_vkey_edit_command
(
	function()
	{	
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				stick_yscale = real_safe(argument[0]);
			}
		}
	},
	"stick_scale_y",
	"stick_scale_y (num)",
	VKEYUI_KEY_TYPES.JOYSTICK,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				stick_xscale = real_safe(argument[0]);
				stick_yscale = real_safe(argument[0]);
			}
		}
	},
	"stick_scale",
	"stick_scale (num)", 
	VKEYUI_KEY_TYPES.JOYSTICK
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				joy_deadzone_x = clamp(real_safe(argument[0]), 0, 1)
			}
		}
	},
	"stick_deadzone_x",
	"stick_deadzone_x (num)",
	VKEYUI_KEY_TYPES.JOYSTICK,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				joy_deadzone_y = clamp(real_safe(argument[0]), 0, 1)
			}
		}
	},
	"stick_deadzone_y",
	"stick_deadzone_y (num)",
	VKEYUI_KEY_TYPES.JOYSTICK,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				joy_deadzone_x = clamp(real_safe(argument[0]), 0, 1)
				joy_deadzone_y = clamp(real_safe(argument[0]), 0, 1)
			}
		}
	},
	"stick_deadzone",
	"stick_deadzone (num)",
	VKEYUI_KEY_TYPES.JOYSTICK
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 2)
		{
			with(global.vkeyui_selectedvbutton)
			{
				joy_blend = make_color_rgb
				(
					int64_safe(argument[0]),
					int64_safe(argument[1]),
					int64_safe(argument[2])
				)
			}
		}
	},
	"stick_color",
	"stick_color r(num) g(num) b(num)",
	VKEYUI_KEY_TYPES.JOYSTICK
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				image_speed = real_safe(argument[0]);
			}
		}
	},
	"image_speed",
	"image_speed (num)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				image_index = real_safe(argument[0]);
			}
		}
	},
	"frame",
	"frame (num)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				forceshowbind = (string_pos("t", argument[0]) == 1 || int64_safe(argument[0]) == 1) ? true : false;
			}
		}
	},
	"forceshowbind",
	"forceshowbind (bool)",
	VKEYUI_KEY_TYPES.BIND,
	false
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				spr_palette = asset_get_index_vkey(argument[0]);
			}
		}
	},
	"palette_sprite",
	"palette_sprite (asset)"
);

register_vkey_edit_command
(
	function()
	{
		if(argument_count > 0)
		{
			with(global.vkeyui_selectedvbutton)
			{
				paletteselect = real_safe(argument[0]);
			}
		}
	},
	"paletteselect",
	"paletteselect (num)"
);