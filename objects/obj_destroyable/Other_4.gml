if (ds_list_find_index(global.saveroom, id) != -1){
	if(variable_instance_exists(id,"oldblock")){
		tile_layer_delete_at(1, x, y)
	}
	instance_destroy()
}
