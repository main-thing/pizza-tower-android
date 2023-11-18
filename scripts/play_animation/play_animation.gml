///@function play_animation(instance, animation, ?argument)
///@arg instance
///@arg animation
function play_animation(argument0) {
	var args = argument0;
	if(ds_map_exists(animations, args[| 0])){
		ds_list_destroy(animations[? args[| 0]]);
		ds_map_delete(animations, args[| 0]);
	}
	var anim = anim_create(args[| 1]);
	for(var i = 2; i < ds_list_size(args); i++){
		anim_add_argument(anim, args[| i]);
	}
	ds_map_add_list(animations, args[| 0], anim);


}
