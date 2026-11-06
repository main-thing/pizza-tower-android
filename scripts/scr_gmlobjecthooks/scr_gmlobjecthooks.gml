global.enable_object_gml_event_hooks = false;
global.object_gml_event_hooks_map = {};
#macro ADD_OBJECT_EVENT_GML_HOOK if(global.enable_object_gml_event_hooks)\
{\
	var ___h = global.object_gml_event_hooks_map[$ debug_get_callstack(1)[0]];\
	if(___h)\
	{\
		live_snippet_call(___h);\
		exit;\
	}\
}

function gml_hook_object_event(object, event, code)
{
	var snip = live_snippet_create(code, "gml_Object_" + object + "_" + event + ":1");
	if(snip == undefined) get_string_async("AN ERROR HAS OCCURRED", live_result);
	global.object_gml_event_hooks_map[$ "gml_Object_" + object + "_" + event + ":1"] = snip;
}

function gml_unhook_object_event(object, event)
{
	variable_struct_remove(global.object_gml_event_hooks_map, "gml_Object_" + object + "_" + event + ":1");
}