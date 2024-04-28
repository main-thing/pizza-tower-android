var i_d = ds_map_find_value(async_load, "id")
if (i_d == dsxioks)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != ""){
            nejdmssx = ds_map_find_value(async_load, "result")
			if(string_lower(nejdmssx) != "save" && string_lower(nejdmssx) != "load" && string_lower(nejdmssx) != "delete level"){
				edit_object_var(nejdmssx)
			} else{
				if(nejdmssx == "save"){
					save_editor_objects()
				}
				if(nejdmssx == "delete level"){
					delete_editor_objects()
				}
				if(nejdmssx == "load"){
					
					if(clipboard_has_text()){
						amogustextlol = get_string_async("load code: ", clipboard_get_text())
					} else{
							amogustextlol = get_string_async("load code: ","")
					}
				}
			}
		}
    }
}
if (i_d == amogustextlol)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "") {
			load_editor_objects(ds_map_find_value(async_load, "result"))
		}
    }
}