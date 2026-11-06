ADD_OBJECT_EVENT_GML_HOOK;
if place_meeting((x + hsp), y, obj_solid)
	hsp *= -1
if use_collision
	scr_collide()
