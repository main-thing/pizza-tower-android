ADD_OBJECT_EVENT_GML_HOOK;
/// @description Handle vkeys
with(obj_virtual_controller)
{

	vkeys = [];
	
	// Skip out on other keys as they don't need to use virtual keys
	if(keycodes[0] != VKEYUI_KEY_TYPES.NONE || buttonlockable)
		continue;
	
	// Add the keys for everything else
	for(var i = 1; i < array_length(keycodes); i++)
	{
		array_push(
			vkeys, 
			virtual_key_add(
				bbox_left,
				bbox_top,
				bbox_right - bbox_left,
				bbox_bottom - bbox_top,
			keycodes[i])
		);
	}
	
	if(ENABLE_VKEY_DEBUG_VIEWS)
	{
		for(var i = 0; i < array_length(vkeys); i++)
			virtual_key_show(vkeys[i]);
	}
}















