ADD_OBJECT_EVENT_GML_HOOK;
with (instance_create(x, y, obj_sausageman_dead))
	sprite_index = spr_policecar_dead
with (obj_policebooth)
	released = 0
ds_queue_destroy(followqueue)
