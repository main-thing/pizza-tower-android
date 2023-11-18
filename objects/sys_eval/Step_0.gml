sm_update(sm);
if(ds_exists(animations, ds_type_map)){
	for(var i = ds_map_find_first(animations); i != undefined; i = ds_map_find_next(animations, i)){
		with(i){
			anim_update(other.animations[? i]);
		}
	}
}