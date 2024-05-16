function struct_create(){
	return {}
}

function try_catch(_try = "", _catch = ""){
	try {
		NSP_execute_string(_try)
	} 
	catch(err){
		_nsp_error = err // you can do show_message(_nsp_error in the catch string)
		NSP_execute_string(_catch)
	}
}
function if_else(var1, _if, _else){
	if(var1){
		NSP_execute_string(_if)
	} else {
		NSP_execute_string(_else)
	}
}
function array_get_index(value,array){
	for(var __index=-1,i=0;i<array_length(array);i++)
		if(value==array[i]){
			__index=i;
			break
		}
	return __index
}
function add_music_array(mainsong,secretsong,override){
	with(obj_music){
		array_push(room_arr,[mainsong,secretsong,override]) // music support or something for gml commands
	}
}
function call_alarm(alarmid,delay,instance = noone){
	if(instance_exists(instance)){
		instance.alarm[alarmid] = delay
	} else {
		alarm[alarmid] = delay
	}
}
function set_view_surface(_id,surf){
	view_surface_id[_id] = surf
}