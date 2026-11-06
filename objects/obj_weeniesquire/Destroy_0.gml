ADD_OBJECT_EVENT_GML_HOOK;
if (ds_list_find_index(global.baddieroom, id) == -1) {
	instance_create(x, y, obj_weeniemount)
	if (obj_player1.character == "PZ")
		instance_create(x, y, obj_genericpoofeffect)
}
event_inherited()
