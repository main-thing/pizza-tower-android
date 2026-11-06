ADD_OBJECT_EVENT_GML_HOOK;
var x_old = x
event_inherited()
if (x != x_old)
	sprite_index = spr_mortwalk
else
	sprite_index = spr_mortidle
