function object_get_depth(_a0)
{
	var objID = _a0
	var ret = 0
	if (objID >= 0 && objID < array_length_1d(global.__objectID2Depth))
		ret = global.__objectID2Depth[objID]
	return ret;
}

