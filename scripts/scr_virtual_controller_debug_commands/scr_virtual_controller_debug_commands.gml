// This has to placed here due to asset load order.
global.vkeyui_debug_table = {};

register_vkey_debug_command
(
	function()
	{
		var _str = "";
	    for(var i = 0; i < argument_count; i ++)
	    {
	        _str += string(argument[i]) + " ";
	    }
		show_debug_message(_str)
	},
	"show_debug_message",
	"show_debug_message str"
);

register_vkey_debug_command
(
	function()
	{
		var command = "help";
		if(argument_count > 0)
			command = argument[0];
			
		if(command == "list")
		{
			var cmds = variable_struct_get_names(global.vkeyui_debug_table);
			var output = "";
			for(var i = 0; i < array_length(cmds); i++)
			{
				output += cmds[i];
				output = output + (i < array_length(cmds) - 1 ? ", " : "");
			}
			show_message_async(output);
			return;
		}
			
		var cmd = global.vkeyui_debug_table[$ command];
		if(cmd != undefined)
		{
			show_message_async(cmd[1]);
		}
	},
	"help",
	"Displays infomation about a command, use \"help list\" to list all commands.\nUsage: help noclip"
);

register_vkey_debug_command
(
	function()
	{
		global.vkeyui_showfps = !global.vkeyui_showfps;
	},
	"togglefps",
	"Toggles the fps display on the top left.\nUsage: togglefps"
);

register_vkey_debug_command
(
	function()
	{
		global.vkeyui_showbinds = !global.vkeyui_showbinds;
	},
	"togglebinds",
	"Toggles the visiblity of binded commands.\nUsage: togglebinds"
);

register_vkey_debug_command
(
	function()
	{
		var object = "obj_virtual_controller_manager";
		var _type = "real";
		var _var = "x";
		var _val = "0";
			
		if(argument_count > 0)
		{
			var _temp = asset_get_index(argument[0]);
			if(object_exists(_temp))
				object = _temp;
			else
			{
				show_message_async("Object \"" + argument[0] + "\" does not exist.");
				return;
			}
		}
			
		if(argument_count > 1)
		{
			
			if(array_contains(["bool", "int", "real", "float", "string", "asset"], argument[1]))
			{
				_type = argument[1];
			}
			else
			{
				show_message_async("Not a valid type! Use real, float, int, string, or asset.");
				return;
			}
		}
				
		if(argument_count > 2)
		{
			if(variable_instance_exists(object, argument[2]))
			{
				_var = argument[2];
			}
			else
			{
				show_message_async("Object does not contain the \"" + argument[2] + "\" variable.");
				return;
			}
		}
				
		if(argument_count > 3)
		{
			_val = argument[3];
			switch(_type)
			{
				case "bool":
					try _val = bool(_val) catch(e) _val = false;
				break
					
				case "int":
					try _val = int64(_val) catch(e) _val = 0;
				break
					
				case "float":
				case "real":
					try _val = real(_val) catch(e) _val = 0;
				break
					
				case "asset":
					_val = asset_get_index(_val);
				break
			}
			
			variable_instance_set(object, _var, _val);
		}
	},
	"instance_set_variable",
	"Sets a variable of an object in an incredibly ineffecient way.\nUsage: instance_set_variable obj_player real x 0"
);

register_vkey_debug_command
(
	function()
	{
		var object = obj_virtual_controller_manager;
		var _type = "real";
		var _var = "x";
		var _val = "0";
			
		if(argument_count > 0)
		{
			var _temp = asset_get_index(argument[0]);
			if(object_exists(_temp))
				object = _temp;
			else
			{
				show_message_async("Object \"" + argument[0] + "\" does not exist.");
				return;
			}
		}
			
		if(argument_count > 1)
		{
			if(array_contains(["bool", "int", "real", "float", "string", "asset"], argument[1]))
			{
				_type = argument[1];
			}
			else
			{
				show_message_async("Not a valid type! Use real, float, int, string, or asset.");
				return;
			}
		}
				
		if(argument_count > 2)
		{
			if(variable_instance_exists(object, argument[2]))
			{
				_var = argument[2];
			}
			else
			{
				show_message_async("At least one of the O=objects does not contain the \"" + argument[2] + "\" variable.")
				return;
			}
		}
				
		if(argument_count > 3)
		{
			_val = argument[3];
			switch(_type)
			{
				case "bool":
					try _val = bool(_val) catch(e) _val = false;
				break
					
				case "int":
					try _val = int64(_val) catch(e) _val = 0;
				break
					
				case "float":
				case "real":
					try _val = real(_val) catch(e) _val = 0;
				break
					
				case "asset":
					_val = asset_get_index(_val);
				break
			}
			
			with(object) variable_instance_set(id, _var, _val);
		}
	},
	"instance_set_variable_all",
	"Sets a variable of all objects with the same name in an incredibly ineffecient way.\nUsage: instance_set_variable_all obj_slime real x 0"
);

register_vkey_debug_command
(
	function()
	{
		var _type = "real";
		var _var = "x";
		var _val = "0";
			
		if(argument_count > 0)
		{
			if(array_contains(["bool", "int", "real", "float", "string", "asset"], argument[0]))
			{
				_type = argument[0];
			}
			else
			{
				show_message_async("Not a valid type! Use real, float, int, string, or asset.");
				return;
			}
		}
				
		if(argument_count > 1)
		{
			if(variable_global_exists(argument[1]))
			{
				_var = argument[1];
			}
			else
			{
				show_message_async("There is no \"" + argument[1] + "\" global variable.");
				return;
			}
		}
				
		if(argument_count > 2)
		{
			_val = argument[3];
			switch(_type)
			{
				case "bool":
					try _val = bool(_val) catch(e) _val = false;
				break
					
				case "int":
					try _val = int64(_val) catch(e) _val = 0;
				break
					
				case "float":
				case "real":
					try _val = real(_val) catch(e) _val = 0;
				break
					
				case "asset":
					_val = asset_get_index(_val);
				break
			}
			
			variable_global_set(_var, _val);
		}
	},
	"global_set_variable",
	"Sets a global variable in an incredibly ineffecient way.\nUsage: global_set_variable int panic 0"
);

register_vkey_debug_command
(
	function()
	{
		var _str = "";
	    for(var i = 0; i < argument_count; i ++)
	    {
	        _str += string(argument[i]) + " ";
	    }
		
		var buff = buffer_create(0, buffer_grow, 1);
		buffer_write(buff, buffer_string, _str);
		buffer_save(buff, STARTUP_COMMAND_LOCATION);
		buffer_delete(buff);
	},
	"startupcommand",
	"Makes a command to be marked to start on every game start.\nUsage: startupcommand gml show_message_async(\"hello!\")"
);

if(os_type == os_windows)
{
	register_vkey_debug_command
	(
		function()
		{
			var file = get_open_filename("Controls Commands File|*.txt;", "");
			if (file != "")
			{
				var _file = buffer_load(file);
				var _cmd = buffer_read(_file, buffer_string);
				buffer_delete(_file);
				processcommand(_cmd, true);
			}
		},
		"exec",
		"Execute a command from a file, only works on windows platforms, (if you somehow see on any other platform I'm genuinely sorry).\nUsage: exec"
	);
}

scr_ptem_debug_commands();

if(ENABLE_STARTUP_COMMANDS) scr_startupcommand();