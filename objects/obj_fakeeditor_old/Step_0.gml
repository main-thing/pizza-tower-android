if mouse_check_button_pressed(mb_left)
    {
        if editormode
        {
            if (device_mouse_x_to_gui(0) < (button1x + button1width) && device_mouse_y_to_gui(0) < (button1y + button1height) && device_mouse_x_to_gui(0) >= button1x && device_mouse_y_to_gui(0) >= button1y){
                dsxioks = get_string_async("Set object variable (<type> <variablename> <new value>), save, load, delete level.", nejdmssx)
				return
			}
            else if (device_mouse_x_to_gui(0) < (button2x + button2width) && device_mouse_y_to_gui(0) < (button2y + button2height) && device_mouse_x_to_gui(0) >= button2x && device_mouse_y_to_gui(0) >= button2y)
            {
                if instance_exists(transfotip)
                    instance_destroy(transfotip)
                transfotip = instance_create(0, 0, obj_transfotip)
                with (transfotip)
                {
                    if instance_exists(other.selectedent)
                    {
                        text = ("Deleted " + string_upper(object_get_name(other.selectedent.object_index)))
                        instance_destroy(other.selectedent)
                    }
                }
            }
            else if (device_mouse_x_to_gui(0) < (button3x + button3width) && device_mouse_y_to_gui(0) < (button3y + button3height) && device_mouse_x_to_gui(0) >= button3x && device_mouse_y_to_gui(0) >= button3y)
            {
                selectedent = undefined
                dragmode = (!dragmode)
            }
            else if (device_mouse_x_to_gui(0) < (button4x + button4width) && device_mouse_y_to_gui(0) < (button4y + button4height) && device_mouse_x_to_gui(0) >= button4x && device_mouse_y_to_gui(0) >= button4y)
            {
                selectedent = undefined
                copymode = (!copymode)
            }
            else if (device_mouse_x_to_gui(0) < (button5x + button5width) && device_mouse_y_to_gui(0) < (button5y + button5height) && device_mouse_x_to_gui(0) >= button5x && device_mouse_y_to_gui(0) >= button5y)
            {
                selectedent = undefined
                gridmode = (!gridmode)
            }
            if (!hoverbutton)
            {
				oldselectedent = selectedent
				selectedent = instance_position(mouse_x, mouse_y, all)
				if(instance_exists(selectedent)){
					if(selectedent.object_index = obj_virtual_controller){
						selectedent = oldselectedent
					}
				}
                if instance_exists(selectedent)
                {
                    old_object_x = (selectedent.x - mouse_x)
                    old_object_y = (selectedent.y - mouse_y)
                    object_clicked = 1
                }
                if copymode
                {
                    with (selectedent)
                    {
                        with (instance_copy(false))
                        {
                            variable_instance_set(id, "createdbyeditor", 1)
                            variable_instance_set(id, "editorplacedroom", room)
                            variable_instance_set(id, "oldinstanceeditor", object_get_name(object_index))
                            variable_instance_set(id, "persistent", 1)
                        }
                    }
                }
                if instance_exists(transfotip)
                    instance_destroy(transfotip)
                transfotip = instance_create(0, 0, obj_transfotip)
                with (transfotip)
                {
                    if instance_exists(other.selectedent)
                        text = ("Selected " + string_upper(object_get_name(other.selectedent.object_index)))
                }
            }
        }
    }
    if mouse_check_button(mb_left)
    {
        if editormode
        {
            if (device_mouse_x_to_gui(0) < (button1x + button1width) && device_mouse_y_to_gui(0) < (button1y + button1height) && device_mouse_x_to_gui(0) >= button1x && device_mouse_y_to_gui(0) >= button1y)
                button1clicked = 1
            else
                button1clicked = 0
            if (device_mouse_x_to_gui(0) < (button2x + button2width) && device_mouse_y_to_gui(0) < (button2y + button2height) && device_mouse_x_to_gui(0) >= button2x && device_mouse_y_to_gui(0) >= button2y)
                button2clicked = 1
            else
                button2clicked = 0
        }
    }
    if mouse_check_button_released(mb_left)
    {
        button1clicked = 0
        button2clicked = 0
        object_clicked = 0
    }
    if (instance_exists(selectedent) && mouse_check_button(mb_left) && dragmode && (!hoverbutton) && editormode)
    {
        selectedent.x = (old_object_x + mouse_x)
        selectedent.y = (old_object_y + mouse_y)
		if(gridmode){
			selectedent.x = round(selectedent.x / grid_size) * grid_size
			selectedent.y = round(selectedent.y / grid_size) * grid_size
		}
    }
    hoverbutton = 0
    if (device_mouse_x_to_gui(0) < (button1x + button1width) && device_mouse_y_to_gui(0) < (button1y + button1height) && device_mouse_x_to_gui(0) >= button1x && device_mouse_y_to_gui(0) >= button1y)
        hoverbutton = 1
    if (device_mouse_x_to_gui(0) < (button2x + button2width) && device_mouse_y_to_gui(0) < (button2y + button2height) && device_mouse_x_to_gui(0) >= button2x && device_mouse_y_to_gui(0) >= button2y)
        hoverbutton = 1
    if (device_mouse_x_to_gui(0) < (button3x + button3width) && device_mouse_y_to_gui(0) < (button3y + button3height) && device_mouse_x_to_gui(0) >= button3x && device_mouse_y_to_gui(0) >= button3y)
        hoverbutton = 1
    if (device_mouse_x_to_gui(0) < (button4x + button4width) && device_mouse_y_to_gui(0) < (button4y + button4height) && device_mouse_x_to_gui(0) >= button4x && device_mouse_y_to_gui(0) >= button4y)
        hoverbutton = 1
    if (device_mouse_x_to_gui(0) < (button5x + button5width) && device_mouse_y_to_gui(0) < (button5y + button5height) && device_mouse_x_to_gui(0) >= button5x && device_mouse_y_to_gui(0) >= button5y)
        hoverbutton = 1