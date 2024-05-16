/// @description nsp_variable_get_new(Instance, Variable)
/// @param Instance
/// @param  Variable
function nsp_variable_get_new() {
	/*
	Underlying NSP script.
	*/
	var nspToken = global.nspToken;
	var inst, varname;

	inst = argument[0];
	varname = argument[1];

	//DEBUG:
	//show_message("Fetching "+varname+" -> "+nsp_string_force(variable_instance_get(inst, varname)));

	if (inst < 10000) {

	  if (instance_number(inst) == 0) {
	    NSP_notify("SCRIPT: nsp_variable_get_new. ERROR: Trying to reference non-existing instance.");
	    exit;
	    }
    
	  inst = instance_find(inst, 0);

	  }

	if (!instance_exists(inst)) {

	  NSP_notify("SCRIPT: nsp_variable_get_new. ERROR: Trying to reference non-existing instance.");
	  return nspToken[NSP_TOK.abort];
  
	  }
	switch(varname){
		case "view_enabled":
			return view_enabled
		break
		case "room_speed":
			return room_speed
		break
		case "mouse_x":
			return mouse_x
		break
		case "mouse_y":
			return mouse_y
		break
		case "application_surface": return application_surface;
		break
		case "view_camera[0]": return view_camera[0];
		break
		case "view_camera[1]": return view_camera[1];
		break
		case "view_camera[2]": return view_camera[2];
		break
		case "view_camera[3]": return view_camera[3];
		break
		case "view_camera[4]": return view_camera[4];
		break
		case "view_camera[5]": return view_camera[5];
		break
		case "view_camera[6]": return view_camera[6];
		break
		case "view_camera[7]": return view_camera[7];
		break
		case "view_current": return view_current;
		break
		case "current_year": return current_year;
		break
		case "current_month": return current_month;
		break
		case "current_weekday": return current_weekday;
		break
		case "current_day": return current_day;
		break
		case "current_hour": return current_hour;
		break
		case "current_minute": return current_minute;
		break
		case "current_second": return current_second;
		break
		case "current_time": return current_time;
		break
		case "fps": return fps;
		break
		case "game_id": return game_id;
		break
		case "game_save_id": return game_save_id;
		break
		case "game_display_name": return game_display_name;
		break
		case "game_project_name": return game_project_name;
		break
		case "working_directory": return working_directory;
		break
		case "program_directory": return program_directory;
		break
		case "temp_directory": return temp_directory;
		break
	}
	if (!variable_instance_exists(inst, varname)) {

	  NSP_notify("SCRIPT: nsp_variable_get_new. ERROR: Trying to fetch a non-existant variable ( "+varname+" ).");
	  return nspToken[NSP_TOK.abort];

	  }

	return variable_instance_get(inst, varname);



}
