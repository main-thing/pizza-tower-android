ADD_OBJECT_EVENT_GML_HOOK;
sprite = "spr_command_trigger"
step_event = ""
destroy_event = ""
draw_event = "draw_self()"
drawgui_event = ""
roomstart_event = ""
roomend_event = ""
step_event_saved = undefined
draw_event_saved = undefined
drawgui_event_saved = undefined
roomstart_event_saved = undefined
roomend_event_saved = undefined
spriteids = 0
show_in_pause = false
var l = global.custom_object_list
if(ds_exists(l, ds_type_list))
	ds_list_add(l, id)
docommand("reload_gml", true, true)