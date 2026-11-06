function scr_activate_custom_objects()
{
	var l = global.custom_object_list 
	for(var i = 0; i < ds_list_size(l); i++)
	{
		if(variable_instance_get(l[| i], "show_in_pause"))
		{
			instance_activate_object(l[| i])
		}
	}
}
global.custom_object_list = ds_list_create();