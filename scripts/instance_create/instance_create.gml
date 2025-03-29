function instance_create(argument0, argument1, argument2)
{
	var myDepth = object_get_depth(argument2)
	var inst = instance_create_depth(argument0, argument1, myDepth, argument2)
	if(instance_exists(obj_fakeeditor))
	{
		with(obj_fakeeditor)
		{
			if(in_play_mode)
			{
				instances[instances_len] = inst
				instances_len++
			}
		}
	}
	return inst;
}

