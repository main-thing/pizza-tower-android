button1clicked = 0
button1height = 50
button1width = 50
button1x = 0
button1y = 0
button2clicked = 0
button2height = 50
button2width = 50
button2x = 60
button2y = 0
button3height = 50
button3width = 50
button3x = 120
button3y = 0
button4height = 50
button4width = 50
button4x = 180
button4y = 0
dragmode = 0
copymode = 0
editormode = 0
selectedent = undefined
old_object_x = 0
old_object_y = 0
object_clicked = 0
dsxioks = undefined
nejdmssx = ""
transfotip = undefined
exclude_object_hide_arr = [obj_pizzaface, obj_johnghost, obj_snickexe]
variabletochange = ""
door_object_arr = [obj_arenadoor, obj_startgate, obj_snickchallengedoor, obj_door, obj_keydoor, obj_geromedoor]
depth = -19998
if(instance_number(object_index) > 1){
	instance_destroy()
}
function save_editor_objects() //gml_Script_save_editor_objects
{
    var instance_list = ds_list_create()
    var myid = id
    var tempvar = undefined
    with (all)
    {
        if variable_instance_exists(id, "createdbyeditor")
        {
            var instance_map = ds_map_create()
            ds_list_add(instance_list, instance_map)
            ds_list_mark_as_map(instance_list, (ds_list_size(instance_list) - 1))
            var i = 0
            var var_array = variable_instance_get_names(id)
            ds_map_add(instance_map, "object_index", object_index)
            ds_map_add(instance_map, "image_xscale", image_xscale)
            ds_map_add(instance_map, "image_yscale", image_yscale)
            ds_map_add(instance_map, "x", x)
            ds_map_add(instance_map, "y", y)
            ds_map_add(instance_map, "persistent", persistent)
            ds_map_add(instance_map, "createdbyeditor", createdbyeditor)
            ds_map_add(instance_map, "editorplacedroom", editorplacedroom)
            ds_map_add(instance_map, "oldinstanceeditor", oldinstanceeditor)
            while (i < array_length(var_array))
            {
                if is_real(variable_instance_get(id, var_array[i]))
                    ds_map_add(instance_map, var_array[i], ("real|" + string(variable_instance_get(id, var_array[i]))))
                if is_bool(variable_instance_get(id, var_array[i]))
                    ds_map_add(instance_map, var_array[i], ("bool|" + string(bool(variable_instance_get(id, var_array[i])))))
                if is_string(variable_instance_get(id, var_array[i]))
                    ds_map_add(instance_map, var_array[i], ("string|" + string(variable_instance_get(id, var_array[i]))))
                i++
            }
        }
    }
    var savelist = ds_map_create()
    ds_map_add_list(savelist, "instance_list", instance_list)
    var liststring = json_encode(savelist)
    get_string_async("copy string", liststring)
    ds_map_destroy(savelist)
}

function load_editor_objects(argument0) //gml_Script_load_editor_objects
{
    if ((!is_string(argument0)) || argument0 == "")
        show_message_async("No input provided")
    else
    {
        var json_temp = json_decode(argument0)
        instance_list = ds_map_find_value(json_temp, "instance_list")
        var i2 = 0
        for (i2 = 0; i2 < ds_list_size(instance_list); i2++)
        {
            var lemap = ds_list_find_value(instance_list, i2)
            var size = ds_map_size(lemap)
            var key = ds_map_find_first(lemap)
            var vararray = []
            var varvaluearray = []
            var i3 = 0
            for (i3 = 0; i3 < (size - 1); i3++)
            {
                var i4 = 0
                key = ds_map_find_next(lemap, key)
                vararray[i3] = key
                varvaluearray[i3] = ds_map_find_value(lemap, key)
                if (string(varvaluearray[i3]) == "null")
                    varvaluearray[i3] = undefined
                if (string_pos("real|", varvaluearray[i3]) == 1)
                    varvaluearray[i3] = real(string_replace(varvaluearray[i3], "real|", ""))
                if (string_pos("bool|", varvaluearray[i3]) == 1)
                    varvaluearray[i3] = bool(string_replace(varvaluearray[i3], "bool|", ""))
                if (string_pos("string|", varvaluearray[i3]) == 1)
                    varvaluearray[i3] = string_replace(varvaluearray[i3], "string|", "")
                if (i3 == (size - 2))
                {
                    with (instance_create(ds_map_find_value(lemap, "x"), ds_map_find_value(lemap, "y"), ds_map_find_value(lemap, "object_index")))
                    {
                        for (i4 = 0; i4 < array_length(vararray); i4++)
                        {
                            if (vararray[i4] != "object_index")
                                variable_instance_set(id, vararray[i4], varvaluearray[i4])
                            variable_instance_set(id, "oldinstanceeditor", ds_map_find_value(lemap, "oldinstanceeditor"))
                            variable_instance_set(id, "createdbyeditor", ds_map_find_value(lemap, "createdbyeditor"))
                            variable_instance_set(id, "editorplacedroom", ds_map_find_value(lemap, "editorplacedroom"))
                        }
                    }
                }
            }
        }
        ds_map_destroy(json_temp)
    }
}

function edit_object_var(argument0) //gml_Script_edit_object_var
{
    var commands = string_split(argument0, " ")
    var i = 1
    while (i < array_length(commands))
    {
        if (i == 1)
        {
            tempvartype = string(commands[i])
            if (tempvartype != "bool" && tempvartype != "string" && tempvartype != "int" && tempvartype != "float" && tempvartype != "real" && tempvartype != "asset")
            {
                show_message_async((("invalid type \"" + commands[i]) + "\" Available types: bool, string, int, float, real, asset"))
                break
            }
            else
            {
                if (i == 2)
                {
                    oldvariable = variabletochange
                    variabletochange = commands[i]
                    if (!(variable_instance_exists(selectedent, variabletochange)))
                    {
                        variabletochange = oldvariable
                        show_message_async("variable does not exist, defaulting to previous variable.")
                    }
                }
                if (i == 3)
                {
                    switch tempvartype
                    {
                        case "bool":
                            if is_bool(bool(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                                show_message_async("successfully set bool")
                            }
                            break
                        case "int":
                            if is_int64(int64(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                                show_message_async("successfully set int")
                            }
                            break
                        case "float":
                        case "real":
                            if is_real(real(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, real(commands[i]))
                                show_message_async("successfully set real")
                            }
                            break
                        case "string":
                            if is_string(commands[i])
                            {
                                variable_instance_set(selectedent, variabletochange, commands[i])
                                show_message_async("successfully set string")
                            }
                            break
                        case "asset":
                            if (asset_get_index(commands[i]) > -1)
                            {
                                variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                                show_message_async("successfully set asset")
                            }
                            break
                    }

                }
                if (i >= 3)
                    break
                else
                {
                    i++
                    continue
                }
            }
        }
        else if (i == 2)
        {
            oldvariable = variabletochange
            variabletochange = commands[i]
            if (!instance_exists(selectedent))
            {
                show_message_async("instance does not exist.")
                break
            }
            else if (!(variable_instance_exists(selectedent, variabletochange)))
            {
                variabletochange = oldvariable
                show_message_async("variable does not exist.")
                break
            }
            else
            {
                if (i == 3)
                {
                    switch tempvartype
                    {
                        case "bool":
                            if is_bool(bool(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                                show_message_async("successfully set bool")
                            }
                            break
                        case "int":
                            if is_int64(int64(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                                show_message_async("successfully set int")
                            }
                            break
                        case "float":
                        case "real":
                            if is_real(real(commands[i]))
                            {
                                variable_instance_set(selectedent, variabletochange, real(commands[i]))
                                show_message_async("successfully set real")
                            }
                            break
                        case "string":
                            if is_string(commands[i])
                            {
                                variable_instance_set(selectedent, variabletochange, commands[i])
                                show_message_async("successfully set string")
                            }
                            break
                        case "asset":
                            if (asset_get_index(commands[i]) > -1)
                            {
                                variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                                show_message_async("successfully set asset")
                            }
                            break
                    }

                }
                if (i >= 3)
                    break
                else
                {
                    i++
                    continue
                }
            }
        }
        else
        {
            if (i == 3)
            {
                switch tempvartype
                {
                    case "bool":
                        if is_bool(bool(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, bool(commands[i]))
                            show_message_async("successfully set bool")
                        }
                        break
                    case "int":
                        if is_int64(int64(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, int64(commands[i]))
                            show_message_async("successfully set int")
                        }
                        break
                    case "float":
                    case "real":
                        if is_real(real(commands[i]))
                        {
                            variable_instance_set(selectedent, variabletochange, real(commands[i]))
                            show_message_async("successfully set real")
                        }
                        break
                    case "string":
                        if is_string(commands[i])
                        {
                            variable_instance_set(selectedent, variabletochange, commands[i])
                            show_message_async("successfully set string")
                        }
                        break
                    case "asset":
                        if (asset_get_index(commands[i]) > -1)
                        {
                            variable_instance_set(selectedent, variabletochange, asset_get_index(commands[i]))
                            show_message_async("successfully set asset")
                        }
                        break
                }

            }
            if (i >= 3)
                break
            else
            {
                i++
                continue
            }
        }
    }
}