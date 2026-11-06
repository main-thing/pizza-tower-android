function instance_create(_a0, _a1, _a2)
{
	var myDepth = object_get_depth(_a2)
	var inst = instance_create_depth(_a0, _a1, myDepth, _a2)
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

