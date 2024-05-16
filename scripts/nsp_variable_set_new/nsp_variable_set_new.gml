/// @description nsp_variable_set_new(Instance, Variable, Value)
/// @param Instance
/// @param  Variable
/// @param  Value
function nsp_variable_set_new() {
	/*
	Underlying NSP script.
	*/
	var inst, varname, val;

	inst = argument[0];
	varname = argument[1];
	val = argument[2];

	//DEBUG:
	//show_message("Setting "+varname+" to "+nsp_string_force(val));

	if (inst < 10000) {

	  if (instance_number(inst) == 0) {
	    NSP_notify("SCRIPT: nsp_variable_set_new. ERROR: Trying to reference non-existing instance.");
	    exit;
	    }
    
	  inst = instance_find(inst, 0);

	  }

	if (!instance_exists(inst)) {

	  NSP_notify("SCRIPT: nsp_variable_set_new. ERROR: Trying to reference non-existing instance.");
	  exit;
 
	  }
	switch(varname){
		case "view_enabled":
			 return view_enabled = val
		break
		case "room_speed":
			return room_speed = val
		break
		case "application_surface":
			return application_surface = val
		break
		case "view_camera[0]":
			return view_camera[0] = val;
		break
		case "view_camera[1]":
			return view_camera[1] = val;
		break
		case "view_camera[2]":
			return view_camera[2] = val;
		break
		case "view_camera[3]":
			return view_camera[3] = val;
		break
		case "view_camera[4]":
			return view_camera[4] = val;
		break
		case "view_camera[5]":
			return view_camera[5] = val;
		break
		case "view_camera[6]": 
			return view_camera[6] = val;
		break
		case "view_camera[7]": 
			return view_camera[7] = val;
		break
	}
	if (is_string(val) and nsp_is_string(val)) {

	  val = string_copy(val, 2, string_length(val)-2);
  
	  }
 
	variable_instance_set(inst, varname, val);




}
