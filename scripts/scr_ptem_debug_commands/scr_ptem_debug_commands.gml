// I made a severe lapse in judgement and deleted all these commands on accident while updating the controls.
// Which caused me to lose all the code for this, and needed to use UTMT to get it back.
// Now this is in a seperate script to not deal with that again, at the cost of my comments being gone.
// This is why we use version control!
function scr_ptem_debug_commands()
{
	register_vkey_debug_command(function()
	{
	    with(obj_player1)
	        state = states.debugstate;
	}, "noclip", "Enables noclip on the player.\nUsage: noclip");
	
	register_vkey_debug_command(function()
	{
	    with(obj_player1)
	    {
	        var object = obj_forknight;
	        var distance = 0;
        
	        if(argument_count > 0)
	        {
	            var _temp = asset_get_index(argument[0]);
	            object = object_exists(_temp) ? _temp : obj_forknight;
	        }
        
	        if(argument_count > 1)
	            distance = int64_safe(argument[1]);
        
	        with(obj_player1)
	            instance_create(x + (distance * xscale), y, object);
	    }
	}, "spawn", "Spawns an object at the player's location that is desired, with an optional distance parameter.\nUsage: spawn obj_slime 200");
	
	register_vkey_debug_command(function()
	{
	    var panic = 0;
    
	    if (argument_count > 0)
	        panic = int64_safe(argument[0]);
    
	    global.panic = !global.panic;
    
	    if(global.panic)
	    {
	        global.fill = panic * 12;
	    }
	}, "panic", "Starts Pizza Time, with an optional argument that can be used to set how long it is in seconds.\nUsage: panic 120");
	
	register_vkey_debug_command(function()
	{
	    var sound = sfx_taunt;
    
	    if (argument_count > 0)
	    {
	        var _temp = asset_get_index(argument[0]);
	        sound = audio_exists(_temp) ? _temp : sfx_taunt;
	    }
    
	    scr_soundeffect(sound);
	}, "play_sound", "Plays a sound.\nUsage: play_sound sfx_taunt");
	
	register_vkey_debug_command(function()
	{
	    var sound = mu_entrance;
    
	    if (argument_count > 0)
	    {
	        var _temp = asset_get_index(argument[0]);
	        sound = audio_exists(_temp) ? _temp : mu_entrance;
	    }
		
		with(obj_music)
		{
			audio_stop_sound(musicID)
			music = sound
			musicID = scr_music(music)
		}
	}, "play_music", "Forces a specified sound to be the background music.\nUsage: play_music mu_entrance");
	
	register_vkey_debug_command(function()
	{
	    with(obj_player1)
	    {
	        var _input = argument[0];
        
	        if (_input == "list")
	        {
	            var _states = variable_struct_get_names(states);
	            var output = "";
            
	            for (var i = 0; i < array_length(_states); i++)
	            {
	                var __state = _states[i];
	                output += (__state + " = " + string(variable_struct_get(states, __state)));
	                output = output + ((i < (array_length(_states) - 1)) ? ", " : "");
	            }
            
	            get_string_async("", output);
	            exit;
	        }
        
	        if (string_starts_with(_input, "states."))
	            _input = string_delete(_input, 1, 7);
        
	        var _state = variable_struct_get(states, _input);
        
	        if (_state == undefined)
	            _state = states.normal;
        
	        state = _state;
	    }
	}, "player_set_state", "Sets the current state the player is in, use \"player_set_state list\" for a list of all states.\nUsage: player_set_state debugstate");
	
	register_vkey_debug_command(function()
	{
	    var _str = "";
    
	    for (var i = 0; i < argument_count; i++)
	        _str += (string(argument[i]) + " ");
    
	    var _snippet = live_snippet_create(_str, "debug_command");
    
	    if (_snippet == undefined)
	    {
	        get_string_async("AN ERROR HAS OCCURRED", live_result);
	        exit;
	    }
    
	    if (!live_snippet_call(_snippet))
	        get_string_async("AN ERROR HAS OCCURRED", live_result);
    
	    live_snippet_destroy(_snippet);
	}, "gml", "Runs the following input in a GameMaker Language parser and runs it.\nUsage: gml with(obj_player1) x = 0;");
	
	register_vkey_debug_command(function()
	{
		with(obj_virtual_controller_manager)
			showcollisions = !showcollisions;
	    scr_handle_collision_vis();
	}, "showcollisions", "Toggles the visibility of collisions.\nUsage: showcollisions");
	
	register_vkey_debug_command(function()
	{
		with(obj_player1)
			finalmoveset = !finalmoveset;
	}, "finalmoveset", "Toggles final game moveset on the player.\nUsage: finalmoveset");
	
	
	register_vkey_debug_command(function()
	{
	    with (obj_custom_object)
	    {
	        var events = ["step_event", "draw_event", "drawgui_event", "roomstart_event", "roomend_event"];
        
	        for (var i = 0; i < array_length(events); i++)
	        {
	            var _content = variable_instance_get(id, events[i]);
	            var _saved = variable_instance_get(id, events[i] + "_saved");
            
	            if (_saved != undefined)
	                variable_instance_set(id, events[i] + "_saved", live_snippet_destroy(_saved));
            
	            if (_content != "")
				{
	                variable_instance_set(id, events[i] + "_saved", live_snippet_create(_content));
					if(variable_instance_get(id, events[i] + "_saved") == undefined) get_string_async("AN ERROR HAS OCCURRED", live_result);
				}
			}
	    }
    
	    with (obj_custom_object_ext)
	    {
	        var events = variable_struct_get_names(event);
        
	        for (var i = 0; i < array_length(events); i++)
	        {
	            var _event = variable_struct_get(event, array_get(events, i));
            
	            if (events[i] == "alarms" || events[i] == "outside_view" || events[i] == "intersect_view")
	            {
	                for (var i2 = 0; i2 < array_length(_event); i2++)
	                {
	                    if (_event[i2][1] != undefined)
	                        _event[i2][1] = live_snippet_destroy(_event[i2][1]);
                    
	                    _event[i2][1] = live_snippet_create(_event[i2][0]);
						if(_event[i2][1] == undefined) get_string_async("AN ERROR HAS OCCURRED", live_result);
	                }
	            }
	            else
	            {
	                if (_event[1] != undefined)
	                    _event[1] = live_snippet_destroy(_event[1]);
                
	                if (_event[0] != "" || (events[i] == "draw" && _event[0] != "draw_self()"))
					{
	                    _event[1] = live_snippet_create(_event[0]);
						if(_event[1] == undefined) get_string_async("AN ERROR HAS OCCURRED", live_result);
					}	
	            }
	        }
	    }
	}, "reload_gml", "Reloads code for all obj_custom_object / obj_custom_object_ext objects and allows execution of them.\nUsage: reload_gml");

	
	register_vkey_debug_command(function()
	{
		if(os_type == os_windows)
		{
		    var file = get_open_filename("PTEM Commands File|*.txt;*png;*gml;", "");
        
		    if (file != "")
		    {
		        var _file = buffer_load(file);
		        var _cmd = buffer_read(_file, buffer_string);
		        buffer_delete(_file);
		        processcommand(_cmd, true);
		    }
		}
		
		if(os_type == os_android)
		{
			var _filename = "";
		    for(var i = 0; i < argument_count; i++)
		        _filename += string(argument[i]) + " ";
			
			if(file_exists(_filename)) 
			{
				var _file = buffer_load(_filename);
				var _cmd = buffer_read(_file, buffer_string);
				buffer_delete(_file);
				
				processcommand(_cmd, true);
			}
			else
			{
				show_message_async("No commands file found at: " + _filename)
			}
		}
	}, "exec", "Execute a command from a file, only works on windows platforms, (if you somehow see on any other platform I'm genuinely sorry).\nUsage: exec");
}