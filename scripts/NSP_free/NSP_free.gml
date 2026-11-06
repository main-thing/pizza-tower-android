/// @description NSP_free(Free Saved);
/// @param Free Saved
function NSP_free(_a0) {
	/*

	Frees all the memory used by the parser.
	If _a0 is set to true then all data saved by using 
	NSP_save(...) function will be freed as well.

	Returns: n/a 

	*/
	var;

	global.nspToken=0;

	//ds_list_destroy(global.nspListStr);
	//ds_list_destroy(global.nspListPar);

	if (global.nspDsMap<>-1 and ds_exists(global.nspDsMap,ds_type_map))
	 ds_map_destroy(global.nspDsMap);

	if _a0==true {

	 repeat (ds_list_size(global.nspListSaved)) begin
 
	  NSP_free_saved(global.nspListSaved[|0]);
 
	 end;

	 }
 
	ds_list_destroy(global.nspListSaved);



}
