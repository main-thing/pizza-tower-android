var i_d = ds_map_find_value(async_load, "id")
if(i_d == fakeeditor_obj)
{
    if ds_map_find_value(async_load, "status")
    {
		nejdmssx = ds_map_find_value(async_load, "result")
        fakeeditor_create_object(nejdmssx)
    }
}
if(i_d == fakeeditor_edit)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != ""){
            nejdmssx = ds_map_find_value(async_load, "result")
			if(global.option_editor_oldedit){
				if(string_lower(nejdmssx) != "save" && string_lower(nejdmssx) != "load" && string_lower(nejdmssx) != "delete level" && string_lower(nejdmssx) != "help" && string_lower(nejdmssx) != "tilemenu"){
					with(obj_fakeeditor){
						fakeeditor_edit_object_var(other.nejdmssx)
					}
				} else{
					fakeeditor_perfom_edit()
				}
			} else {
				fakeeditor_perfom_edit()
			}
		}
    }
}
if(i_d == amogustextlol)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "") {
			fakeeditor_load_editor_objects(ds_map_find_value(async_load, "result"))
		}
    }
}