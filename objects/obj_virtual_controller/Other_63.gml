ADD_OBJECT_EVENT_GML_HOOK;
if(keycodes[0] == "")
	return;

if(async_load[? "id"] != prompt || async_load[? "status"] == false || async_load[? "result"] == "")
	return;
	
last_input = async_load[? "result"]
			
switch(keycodes[0])
{
	case VKEYUI_KEY_TYPES.DEBUG:
		processcommand(last_input)
	break
	case VKEYUI_KEY_TYPES.COLOR:
		processedit(last_input)
	break
	case VKEYUI_KEY_TYPES.LOAD:
		virtual_key_load(last_input)
	break
	case VKEYUI_KEY_TYPES.ADD:
		vkey_from_input(last_input)
	break
}