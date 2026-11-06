function process_old_vkey_vars(_var, loadedbutton, _keycodes_compat)
{
	if(_var == "bklock")
	{
		loadedbutton[$ "buttonlockable"] = loadedbutton[$ _var];
		variable_struct_remove(loadedbutton, _var);
	}
		
	if(_var == "sprite_name")
	{
		loadedbutton[$ "sprite"] = loadedbutton[$ _var];
		loadedbutton[$ "sprite_index"] = loadedbutton[$ _var];
		variable_struct_remove(loadedbutton, _var);
	}
		
	if(_var == "sprite_name_pressed")
	{
		loadedbutton[$ "spr_pressed"] = loadedbutton[$ _var];
		variable_struct_remove(loadedbutton, _var);
	}
		
	if(_var == "balpha")
	{
		loadedbutton[$ "my_usual_alpha"] = loadedbutton[$ _var];
		variable_struct_remove(loadedbutton, _var);
	}
		
	if(_var == "bk")
	{
		if(is_string(loadedbutton[$ _var]))
			array_push(_keycodes_compat, string_upper(loadedbutton[$ _var]));
		else
		{
			array_push(_keycodes_compat, "NONE");
			array_push(_keycodes_compat, loadedbutton[$ _var])
		}
		variable_struct_remove(loadedbutton, _var);
	}
		
	if(_var == "bk2")
	{
		array_push(_keycodes_compat, loadedbutton[$ _var]);
		if(is_string(loadedbutton[$ _var]))
		{
			if(string_pos("togglebinds", loadedbutton[$ _var]) == 1)
			{
				loadedbutton[$ "forceshowbind"] = true;
			}
		}
		variable_struct_remove(loadedbutton, _var);
	}	
}