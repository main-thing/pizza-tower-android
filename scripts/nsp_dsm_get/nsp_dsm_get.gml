/// @description nsp_dsm_get(Name)
/// @param Name
function nsp_dsm_get(_a0) {
	/*
	Underlying NSP script.
	*/
	var nspToken=global.nspToken;

	if nspToken[NSP_TOK.dsm_allowed]=1
	&& ds_exists(global.nspDsMap,ds_type_map)
	&& ds_map_exists(global.nspDsMap,_a0)
	 return ds_map_find_value(global.nspDsMap,_a0)
	 else {
	  NSP_notify("SCRIPT: nsp_dsm_get. ERROR: Value does not exist ("+_a0+").");
	  return nspToken[NSP_TOK.abort];
	  }




}
