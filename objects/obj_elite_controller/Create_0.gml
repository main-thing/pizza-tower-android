if(!variable_global_exists("elitebaddies")){
	global.elitebaddies = false
}
if(instance_number(obj_elite_controller) > 1){
	instance_destroy()
}
elitemode = global.elitebaddies