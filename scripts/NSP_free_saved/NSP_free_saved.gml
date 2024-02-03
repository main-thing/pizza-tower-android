/// @description NSP_free_saved(List ID)
/// @param List ID
function NSP_free_saved(argument0) {
	/*

	Frees the memory used by a saved (converted) string.

	Returns: n/a 

	*/
	if(argument0 == undefined){
		return 0;
	}
	var index;

	ds_list_destroy(argument0[|0]);
	ds_list_destroy(argument0[|1]);
	ds_list_destroy(argument0);

	index=ds_list_find_index(global.nspListSaved,argument0);
	ds_list_delete(global.nspListSaved,index);



}
