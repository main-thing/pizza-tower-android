var i_d = ds_map_find_value(async_load, "id")
if (i_d == fakeeditor_obj)
{
    if ds_map_find_value(async_load, "status")
    {
		nejdmssx = ds_map_find_value(async_load, "result")
        fakeeditor_create_object(nejdmssx)
    }
}
if (i_d == fakeeditor_edit)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != ""){
            nejdmssx = ds_map_find_value(async_load, "result")
			if(nejdmssx == "save"){
				fakeeditor_save_editor_objects()
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
if (i_d == amogustextlol)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "") {
			fakeeditor_load_editor_objects(ds_map_find_value(async_load, "result"))
		}
    }
}