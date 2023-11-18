if (ds_list_find_index(global.saveroom, id) != -1){
	if(variable_instance_exists(id,"oldblock")){
		tile_layer_delete_at(1, x, y)
		tile_layer_delete_at(1, (x + 32), y)
		tile_layer_delete_at(1, (x + 32), (y + 32))
		tile_layer_delete_at(1, x, (y + 32))
	}
	instance_destroy()
}