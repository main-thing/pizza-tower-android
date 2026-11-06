/// @description nsp_dsm_set(Name, Value)
/// @param Name
/// @param  Value
function nsp_dsm_set(_a0, _a1) {
	/*
	Underlying NSP script.
	*/
	var nspToken=global.nspToken;

	if is_string(_a1) {
	 if nsp_is_string(_a1)
	  _a1=string_copy(_a1,2,string_length(_a1)-2);
	 }

	if nspToken[NSP_TOK.dsm_allowed]=1
	&& ds_exists(global.nspDsMap,ds_type_map) {
	 ds_map_delete(global.nspDsMap,_a0);
	 ds_map_add(global.nspDsMap,_a0,_a1);
	 }
	 else {
	  NSP_notify("SCRIPT: nsp_dsm_set. ERROR: DSM does not exist.");
	  exit;
	  }




}
